$fn = 50;

include <../scad_reference/oobb_gear_spur_raw.scad>;

difference() {
	union() {
		oobb_gear_spur_raw(backlash = 0.15, gear_bevel = 1, gear_mod = 0.75, shaft_diam = 0, teeth = 10, thickness = 6);
	}
	union() {
		translate(v = [0, 0, -3.0]) {
			cylinder(h = 6, r = 1.8);
		}
		#translate(v = [0.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		#translate(v = [0.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		#translate(v = [0.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
	}
}
