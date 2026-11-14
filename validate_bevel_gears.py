"""Check every generated bevel mesh and sample its mating motion with OpenSCAD."""

import argparse
import json
import math
from pathlib import Path
import shutil
import re
import subprocess
import tempfile

import trimesh
from oomp_populate_helper import build_oomp_id
from working_oomp_populate import main as populate


def underside_angles(mesh, bottom):
    """Measure real faces without amplifying binary STL rounding on slivers.

    Binary STL stores float32 coordinates. Near-degenerate boolean triangles
    can have unreliable normals despite negligible area. Bound both their
    individual area and their total area; never ignore a meaningful surface.
    """
    downward = (mesh.triangles_center[:, 2] > bottom + 0.01) & (mesh.face_normals[:, 2] < -0.01)
    slivers = downward & (mesh.area_faces <= 1e-5)
    ignored_area = float(mesh.area_faces[slivers].sum())
    assert ignored_area <= min(0.001, mesh.area * 1e-6), "Too much uncertain underside surface"
    angles = [math.degrees(math.acos(max(-1, min(1, -z))))
              for z in mesh.face_normals[downward & ~slivers, 2]]
    return angles, ignored_area


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--steps", type=int, default=8, help="Positions per tooth cycle (default 8)")
    args = parser.parse_args()
    if args.steps < 2:
        parser.error("Use at least two motion samples")
    executable = shutil.which("openscad.com") or shutil.which("openscad")
    if not executable:
        parser.error("OpenSCAD must be on PATH")
    root = Path(__file__).resolve().parent
    results = []
    with tempfile.TemporaryDirectory() as tmp:
        for part in populate(style_filter="bevel", write_files=False):
            part_id = build_oomp_id(part)
            mesh = trimesh.load(root / "parts" / part_id / "3dpr.stl")
            assert mesh.is_watertight and mesh.is_winding_consistent and mesh.volume > 0, part_id
            assert len(mesh.split()) == 1, f"Detached geometry: {part_id}"
            assert abs(mesh.bounds[0, 2] + part["depth"] / 2) < 1e-4, part_id
            assert abs(mesh.bounds[1, 2] - part["depth"] / 2) < 1e-4, part_id
            bottom=-part["depth"]/2
            bed_radii=[]
            for h in (0.05,0.15):
                section=mesh.section(plane_origin=[0,0,bottom+h],plane_normal=[0,0,1])
                assert section is not None, f"Missing bed footprint: {part_id}"
                outer=max(section.discrete,key=lambda p:max(math.hypot(v[0],v[1]) for v in p))
                ring=[math.hypot(p[0],p[1]) for p in outer]
                assert max(ring)-min(ring)<max(ring)*0.002+1e-4, f"Teeth still reach the bed: {part_id}"
                bed_radii.append(max(ring))
            expected_growth=0.1/math.tan(math.radians(part["underside_angle"]))
            assert abs(bed_radii[1]-bed_radii[0]-expected_growth)<0.002, f"Vertical pedestal below ramp: {part_id}"
            # The center plate must reach the same flat top as the teeth.
            bore_radius = 3.25 if part["scale"] == "big" else 1.8
            near_bore = mesh.vertices[(mesh.vertices[:,0]**2+mesh.vertices[:,1]**2)**0.5 < bore_radius+0.05]
            assert abs(near_bore[:,2].max()-part["depth"]/2)<1e-4, f"Raised tooth tips: {part_id}"
            angles, uncertain_area = underside_angles(mesh, bottom)
            assert angles and min(angles)>=44.9, f"Underside needs a steeper ramp: {part_id}"
            target = Path(tmp) / f"{part_id}.stl"
            # Check the actual printable STL. Compute its pitch-apex offset once;
            # repeatedly rebuilding VNF boundaries for each motion phase is costly.
            source = target.with_suffix(".scad")
            wrapper = (root / "parts" / "scad_reference" / "oobb_gear_bevel_raw.scad").as_posix()
            mesh_file = (root / "parts" / part_id / "3dpr.stl").as_posix()
            source.write_text(f'''include <{wrapper}>
$fn=50;
teeth={part['teeth']}; gear_mod={part['module']}; depth={part['depth']};
base=oobb_gear_bevel_base_z(teeth,teeth,gear_mod,{part['pressure_angle']},{part['backlash']},gear_mod/4);
center_to_apex=gear_mod*teeth/2-base-depth/2;
echo(center_to_apex=center_to_apex);
module printed_gear() {{
    translate([0,0,-center_to_apex]) import("{mesh_file}");
}}
for (step=[0:{args.steps-1}]) let(a=step*360/teeth/{args.steps})
    intersection() {{
        rotate([0,0,a]) printed_gear();
        rotate([-90,0,0]) rotate([0,0,-a+180/teeth]) printed_gear();
    }}
''', encoding="utf-8")
            command = [executable, "--hardwarnings", "-o", str(target), str(source)]
            completed = subprocess.run(command, capture_output=True, text=True, timeout=120)
            log = completed.stdout + completed.stderr
            # OpenSCAD returns 1 for an intentionally empty STL intersection.
            assert "WARNING:" not in log and "ERROR:" not in log, log
            assert completed.returncode == 1 and "Current top level object is empty" in log and not target.exists(), (
                f"Mating gears interfere: {part_id} (exit {completed.returncode})\n{log}"
            )
            apex_offset=float(re.search(r"ECHO: center_to_apex = ([\deE+.\-]+)",log).group(1))
            first=mesh.copy()
            first.apply_translation([0,0,-apex_offset])
            second=first.copy()
            second.apply_transform(trimesh.transformations.rotation_matrix(math.pi/part["teeth"],[0,0,1]))
            second.apply_transform(trimesh.transformations.rotation_matrix(-math.pi/2,[1,0,0]))
            _,distances,_=trimesh.proximity.closest_point(second,first.vertices[::max(1,len(first.vertices)//2000)])
            near_contact_gap=float(distances.min())
            assert near_contact_gap<part["module"]*0.4, f"Too little remaining tooth engagement: {part_id}"
            radial=(mesh.vertices[:,0]**2+mesh.vertices[:,1]**2)**0.5
            outside_radius=float(radial.max())
            tip_height=float(mesh.vertices[radial>outside_radius-part["module"]*0.02,2].min()-bottom)
            results.append(dict(id=part_id, watertight=True, connected_components=1,
                                bounds_mm=mesh.bounds.tolist(), volume_mm3=round(float(mesh.volume), 4),
                                bed_radius_mm=round(bed_radii[0]-0.05,4),bed_inset_mm=part["base_chamfer"],
                                min_underside_angle_deg=round(min(angles),4), numerical_sliver_area_mm2=uncertain_area, profile="flat_top_ramped_underside",
                                circular_bed_footprint=True,near_contact_gap_mm=round(near_contact_gap,4),
                                outside_diameter_mm=round(2*outside_radius,4),outer_tip_height_mm=round(tip_height,4),
                                motion_geometry="printable_stl",
                                motion_samples=args.steps, interference=False))
            print(f"PASS {part_id}", flush=True)
    report = root / "research" / "bevel_gear_validation.json"
    report.write_text(json.dumps(dict(gear_count=len(results), checks=results), indent=2) + "\n", encoding="utf-8")
    print(f"Validated {len(results)} meshes and {len(results)*args.steps} motion positions")


if __name__ == "__main__":
    main()
