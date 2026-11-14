$fn = 50;

include <../scad_reference/oobb_gear_bevel_raw.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						oobb_gear_bevel_raw(anchor = "center", backlash = 0.15, base_chamfer = 0.4, clearance = 0.1875, depth = 6, face_width = 9.806701084120741, gear_mod = 0.75, gear_spin = 0, mate_teeth = 30, pressure_angle = 20, shaft_diam = 0, teeth = 30, underside_angle = 45);
					}
					union() {
						translate(v = [0, 0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
