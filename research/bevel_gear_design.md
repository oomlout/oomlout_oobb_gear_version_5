# OOBB v5 full-depth bevel gears

Current profile: 23 October 2026. This supersedes the raised-backing and straight
tooth-extension versions.

## Requested shape

The gear has its exact nominal **6 mm or 9 mm thickness**, with a bevel running
through that thickness. It has no straight lower skirt. Both faces are cut flat;
the center plate and tooth tips end at the same top plane. Original outer pitch
diameters are retained. Combinations that cannot fit are omitted, as requested.

The body is a BOSL2 straight bevel with **zero backing**, intersected with a flat
slab. The slab bottom passes through the outer heel's highest tooth point; its
top is exactly `depth` mm higher. Generating the cone slightly beyond the top
plane allows the center plate to be cut flat along with the tips. There is no
vertical tooth extrusion or added upward tooth material. A continuous 45 degree
underside ramp rises outward from a circular bed-contact area to the tooth tips.
The teeth no longer extend into the first bed layers. The central body remains
directly on the bed, without a pedestal or an increase in overall thickness.
The ramp is formed by removing material below the existing bevel.

## Active range

| Scale | Module | Teeth | Depths | Shaft |
|---|---:|---|---|---|
| Big | 1.5 | 20 | 6 mm | M6 |
| Big | 1.5 | 30, 40, 50, 60 | 6 and 9 mm | M6 |
| Little | 0.75 | 30 | 6 mm | M3 |
| Little | 0.75 | 40, 50, 60 | 6 and 9 mm | M3 |

This is **16 parts**, each mating with an identical part for a 1:1, 90 degree
drive. Large-end pitch diameter remains module times tooth count. OOBB / OOBE
holes are included where the full-height tapered core has enough room.

All 12 mm versions have been removed from the active catalog. The six previous
full-depth versions are preserved in the external refresh recovery archive (`original_archive/bevel_12_mm_full_depth`).
Earlier raised-backing artifacts remain in that same recovery archive (`original_archive/bevel_raised_backing`).
These archives are outside the active parts and parts_source catalogs.
Big Z20 at 9 mm, little Z20 at either depth, and little Z30 at 9 mm cannot fit
the current bore/wall requirements. Z10 remains excluded.

## Geometry and fit

- Equal pairs use 45 degree pitch cones and a shared apex.
- Pressure angle: 20 degrees; root clearance: module/4.
- Backlash per gear: 0.20 mm big, 0.15 mm little.
- Cone radius: `R = module*teeth/(2*sin(delta))`.
- With dedendum `d = module+clearance`, generated face width is
  `(depth+(module+d)*sin(delta))/(cos(delta)+d*sin(delta)/R)+0.2`.
  The extra length puts the center plate beyond the cutting plane before trimming.
  The actual bottom reference is measured from the BOSL2 heel VNF.
- The bed radius is the minimum radius of the actual heel section, inset by
  `base_chamfer` (0.8 mm big, 0.4 mm little). An intersecting conical envelope
  grows outward by `height/tan(underside_angle)`, with `underside_angle=45`.
  This replaces the earlier small tooth-outline chamfer with a genuine underside
  ramp. It removes the bed-level tooth extensions without lifting the gear.
- Nominal pitch/module references are unchanged. Undercutting trims the physical
  outer tooth tips, so the measured outside diameter is smaller than the nominal
  untrimmed `diameter_outer`. Measured diameter and tip height are in the report.
- Face width must stay below cone distance. Conservative small-end core radius:
  `(pitch_radius-d)*(1-face_width/R)`.
- Printed bore plus wall must fit that core: M6 radius 3.25 mm with 1.2 mm wall;
  M3 radius 1.8 mm with 0.8 mm wall. All render modes are considered.

Conventional face-width guidance uses approximately one third of cone distance.
Some full-depth profiles exceed that recommendation. This is an explicit
geometric tradeoff for the requested printed shape, not a claim of equivalent
load capacity. CAD motion checks establish clearance; physical print, contact,
wear and load testing remain necessary.

## Sources and implementation

KHK describes bevel pitch cones and matching ratios; BOSL2 supplies straight
bevel geometry and pitch-apex anchors. Both `spiral=0` and `cutter_radius=0`
are set. The installed BOSL2 revision is
`7fbdf97c4da2fb5c014d82ad2d21c09b0cb8a911`.

- [KHK gear dimension reference](https://khkgears.net/gear-knowledge/gear-technical-reference/calculation-gear-dimensions/)
- [BOSL2 bevel gear documentation](https://github.com/BelfrySCAD/BOSL2/wiki/gears.scad#functionmodule-bevel_gear)

The primitive is in the sibling OOBB v5 repository at
`components/oobb_gear_bevel/working.py`. `working_scad.py` explicitly populates
`p3` before each `oobb.append_full(..., **p3)`. Named OOBB hole primitives provide
mode-specific bores. A final transform moves and rotates teeth and holes together.

## Build and verify

```powershell
python -m pip install -r requirements_bevel_validation.txt
python action_make_bevel_gears.py --preview
python -m pytest tests/test_bevel_gears.py C:/gh/oomlout_oobb_version_5/tests/test_oobb_gear_bevel_component.py -q
python validate_bevel_gears.py --steps 8
```

The validator checks exact thickness, a connected watertight solid, a circular
bed footprint, immediate 45 degree radial growth (no vertical pedestal), and
downward-facing ramp angles of at least 45 degrees away from the bottom face.
The center plate must still reach the same flat top as the teeth. It checks the
actual printable STLs at eight phases per tooth cycle, and samples the paired
mesh gap to confirm near-contact remains after trimming. Results:
`bevel_gear_validation.json`. Examples and previews:
`examples/`.

The ramped-underside revision passed all 16 mesh checks and 128 sampled mating
positions. Every mesh has a circular bed footprint and a measured underside
slope of at least 45 degrees, with tooth tips above the bed. The focused Python
tests also passed (7 tests, 39 subtests). Numerical results are recorded in the
validation JSON.

There are 9 active 6 mm variants, 7 active 9 mm variants, and no active 12 mm variants.

The verified recovery location is `C:/gh/_repository_recovery/catalogue_refresh_2026-11-14/oomlout_oobb_gear_version_5/`. Retired copies are not included in the refreshed Git tree.
