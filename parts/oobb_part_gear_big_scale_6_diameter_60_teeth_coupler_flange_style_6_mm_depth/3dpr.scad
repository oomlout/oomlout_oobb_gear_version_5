$fn = 50;

include <../scad_reference/oobb_gear_spur_raw.scad>;

difference() {
	union() {
		oobb_gear_spur_raw(backlash = 0.2, gear_bevel = 1, gear_mod = 1.5, shaft_diam = 0, teeth = 60, thickness = 6);
	}
	union() {
		translate(v = [0, 0, -3.0]) {
			cylinder(h = 6, r = 3.25);
		}
		translate(v = [-30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0.0, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 37.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [15.0, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 30.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [30.0, 22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [37.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		#translate(v = [0, 0, -3.0]) {
			cylinder(h = 6, r = 5.0);
		}
		translate(v = [5.656854249492381, 5.656854249492381, -3.0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-5.65685424949238, 5.656854249492381, -3.0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [-5.6568542494923815, -5.65685424949238, -3.0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [5.656854249492379, -5.6568542494923815, -3.0]) {
			cylinder(h = 6, r = 1.8);
		}
		translate(v = [0, 0, -3.0]) {
			cylinder(h = 2, r = 11.25);
		}
	}
}
