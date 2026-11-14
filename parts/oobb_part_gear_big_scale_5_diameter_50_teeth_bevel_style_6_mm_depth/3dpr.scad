$fn = 50;

include <../scad_reference/oobb_gear_bevel_raw.scad>;

difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						oobb_gear_bevel_raw(anchor = "center", backlash = 0.2, base_chamfer = 0.8, clearance = 0.375, depth = 6, face_width = 11.655276200163543, gear_mod = 1.5, gear_spin = 0, mate_teeth = 50, pressure_angle = 20, shaft_diam = 0, teeth = 50, underside_angle = 45);
					}
					union() {
						translate(v = [0, 0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-22.5, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, -15.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-15.0, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, 0.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-15.0, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-15.0, 15.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [-7.5, -22.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 0.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [-7.5, 22.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [0.0, -22.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [0.0, -15.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [0.0, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [0.0, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [0.0, 15.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [0.0, 22.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, -22.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, -15.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 0.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 15.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [7.5, 22.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, -15.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [15.0, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, 0.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [15.0, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [15.0, 15.0, -4.0]) {
							cylinder(h = 8, r = 3.25);
						}
						translate(v = [22.5, -7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 0.0, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
						translate(v = [22.5, 7.5, -4.0]) {
							cylinder(h = 8, r = 1.8);
						}
					}
				}
			}
		}
	}
	union();
}
