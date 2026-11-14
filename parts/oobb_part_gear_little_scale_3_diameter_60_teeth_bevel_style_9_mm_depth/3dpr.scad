$fn = 50;

include <../scad_reference/oobb_gear_bevel_raw.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						oobb_gear_bevel_raw(anchor = "center", backlash = 0.15, base_chamfer = 0.4, clearance = 0.1875, depth = 9, face_width = 14.202858875245992, gear_mod = 0.75, gear_spin = 0, mate_teeth = 60, pressure_angle = 20, shaft_diam = 0, teeth = 60, underside_angle = 45);
					}
					union() {
						translate(v = [0, 0, -5.5]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [-7.5, 0.0, -5.5]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [0.0, -7.5, -5.5]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [0.0, 7.5, -5.5]) {
							cylinder(h = 11, r = 1.8);
						}
						translate(v = [7.5, 0.0, -5.5]) {
							cylinder(h = 11, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
