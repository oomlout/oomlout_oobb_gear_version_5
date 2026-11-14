"""Build only the bevel family, without running label or UI actions."""

import argparse
import copy
from pathlib import Path
import shutil
import subprocess
import tempfile

from oomp_populate_helper import build_oomp_id
import scad_help
import working_oomp_populate


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--scad-only", action="store_true", help="Skip STL rendering")
    parser.add_argument("--preview", action="store_true", help="Also render PNG previews")
    args = parser.parse_args()
    executable = shutil.which("openscad.com") or shutil.which("openscad")
    if (not args.scad_only or args.preview) and not executable:
        parser.error("OpenSCAD must be on PATH for STL/PNG rendering")
    root = Path(__file__).resolve().parent
    # The existing generators resolve parts_source/ and parts/ relative to cwd.
    import os
    os.chdir(root)
    options = working_oomp_populate.main(style_filter="bevel")
    for option in options:
        part = copy.deepcopy(option)
        part_id = build_oomp_id(part)
        part["id"] = part_id
        part["directory"] = f"parts/{part_id}"
        part["name"] = part_id.replace("_", " ").title()
        part["project_name"] = root.name
        part["oobb_name"] = part["oobb_details"]["oobb_name"]
        part["kwargs"] = copy.deepcopy(part["oobb_details"])
        part["kwargs"].update(modes=["3dpr"], save_type="none", overwrite=True, oomp_mode="project")
        scad_help.make_scad_generic(part)
        folder = root / part["directory"]
        source = folder / "3dpr.scad"
        if not args.scad_only:
            subprocess.run([executable, "--hardwarnings", "-o", str(folder / "3dpr.stl"), str(source)], check=True)
        if args.preview:
            # Export to a fresh file: the Windows previewer can keep the old PNG
            # open in a way that prevents OpenSCAD's exporter from replacing it.
            with tempfile.TemporaryDirectory(prefix="oobb_bevel_preview_") as temporary:
                preview = Path(temporary) / "preview.png"
                subprocess.run([
                    executable, "--hardwarnings", "--imgsize=900,700", "--viewall", "--autocenter",
                    "--render", "--projection=o", "-o", str(preview), str(source),
                ], check=True)
                shutil.copyfile(preview, folder / "3dpr.png")
    print(f"Built {len(options)} bevel gears")


if __name__ == "__main__":
    main()
