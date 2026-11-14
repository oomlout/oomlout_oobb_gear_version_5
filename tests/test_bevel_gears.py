import copy
import unittest

import oobb
import opsc
from oomp_populate_helper import build_oomp_id
import working_oomp_populate as populate
import working_scad


class BevelFamilyTests(unittest.TestCase):
    def test_catalog_is_unique_and_dispatches(self):
        all_parts = populate.main(write_files=False)
        bevels = [p for p in all_parts if p["style"] == "bevel"]
        self.assertEqual(len(bevels), 16)
        self.assertNotIn(("little",20,12), {(p["scale"],p["teeth"],p["depth"]) for p in bevels})
        self.assertEqual(len({build_oomp_id(p) for p in all_parts}), len(all_parts))
        for part in bevels:
            self.assertEqual(part["mate_teeth"], part["teeth"])
            self.assertIn(part["depth"], (6, 9))
            self.assertAlmostEqual(part["diameter"], part["teeth"] * part["module"])
            self.assertTrue(callable(getattr(working_scad, "get_" + part["oobb_details"]["oobb_name"])))
        # New style expansion must not create bevel flange / clam shell variants.
        self.assertEqual(len([p for p in all_parts if p["style"] == "standard"]), 12)

    def test_all_holes_fit_inside_small_end_roots_and_clear_the_bore(self):
        from components.oobb_gear_bevel.working import dimensions
        import math

        for part in populate.get_bevel_options():
            with self.subTest(scale=part["scale"], teeth=part["teeth"], depth=part["depth"]):
                thing = {"components": [], "components_objects": [], "components_string": []}
                working_scad.get_gear_bevel_style(thing, **part)
                dims = dimensions(**part)
                wall = 1.2 if part["scale"] == "big" else 0.8
                bore_name = "m6" if part["scale"] == "big" else "m3"
                bore = oobb.gv("hole_radius_" + bore_name, "3dpr")
                holes = [p for p in thing["components_objects"] if p["shape"] == "oobb_hole"]
                self.assertTrue(holes)
                for hole in holes:
                    x, y, z = hole["pos"]
                    r = oobb.gv("hole_radius_" + hole["radius_name"], "3dpr")
                    self.assertLessEqual(math.hypot(x, y) + r + wall, dims["inner_root_radius"] + 1e-9)
                    self.assertAlmostEqual(x / 7.5, round(x / 7.5))
                    self.assertAlmostEqual(y / 7.5, round(y / 7.5))
                    if x or y:
                        self.assertGreaterEqual(math.hypot(x, y) - r - bore, wall)
                    self.assertLess(z, -part["depth"] / 2)
                    self.assertGreater(z + hole["depth"], part["depth"] / 2)

    def test_complete_part_transform_preserves_holes(self):
        thing = {"components": [], "components_objects": [], "components_string": []}
        kwargs = dict(teeth=40, depth=6, pos=[10, 20, 30], rot=[90, 0, 0])
        original = copy.deepcopy(kwargs)
        working_scad.get_gear_big_bevel_style(thing, **kwargs)
        self.assertEqual(kwargs, original)
        self.assertEqual(thing["components"][0]["pos"], [10, 20, 30])
        self.assertEqual(thing["components"][0]["rot"], [90, 0, 0])
        source = opsc.opsc_get_object(thing["components"], mode="3dpr").as_scad()
        self.assertIn("difference()", source)
        self.assertIn("oobb_gear_bevel_raw(", source)


if __name__ == "__main__":
    unittest.main()
