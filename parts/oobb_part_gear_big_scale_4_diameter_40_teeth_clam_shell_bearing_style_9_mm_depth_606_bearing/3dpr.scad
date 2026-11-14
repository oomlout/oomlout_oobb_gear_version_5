$fn = 50;

include <../scad_reference/oobb_gear_spur_raw.scad>;

difference() {
	union() {
		translate(v = [83.0, 0, 0]) {
			rotate(a = [0, 180, 0]) {
				difference() {
					union() {
						oobb_gear_spur_raw(backlash = 0.2, gear_bevel = 1, gear_mod = 1.5, shaft_diam = 0, teeth = 40, thickness = 9);
					}
					union() {
						translate(v = [7.5, 15, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
										#translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.8);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-7.5, -15, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
										#translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.8);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [-15, 7.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
										#translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.8);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [15, -7.5, 4.5]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										translate(v = [0, 0, -9.0]) {
											rotate(a = [0, 0, 0]) {
												difference() {
													union() {
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														##linear_extrude(height = 2.5) {
															polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, -0.3]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, -0.6]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
														#translate(v = [-1.75, -3.25, 2.5]) {
															cube(size = [3.5, 6.5, 0.3]);
														}
														#translate(v = [-1.75, -1.75, 2.8]) {
															cube(size = [3.5, 3.5, 0.3]);
														}
													}
													union();
												}
											}
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
										#translate(v = [0, 0, -1.9]) {
											cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.8);
										}
										#translate(v = [0, 0, -9.0]) {
											cylinder(h = 9, r = 1.5);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -4.5]) {
							cylinder(h = 9, r = 3.25);
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
						translate(v = [0.0, -15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [0.0, 15.0, -100.0]) {
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
						translate(v = [-15.0, -15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [-15.0, 0.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [-15.0, 15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [0.0, -15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [0.0, 15.0, -100.0]) {
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
						translate(v = [-15.0, -15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [-15.0, 0.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [-15.0, 15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [0.0, -15.0, -100.0]) {
							cylinder(h = 200, r = 3.25);
						}
						translate(v = [0.0, 15.0, -100.0]) {
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
						translate(v = [-22.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-22.5, 0.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-22.5, 7.5, -100.0]) {
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
						translate(v = [-7.5, -22.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 22.5, -100.0]) {
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
						translate(v = [7.5, -22.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, -15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 22.5, -100.0]) {
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
						translate(v = [22.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [22.5, 0.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [22.5, 7.5, -100.0]) {
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
						translate(v = [-7.5, -22.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 22.5, -100.0]) {
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
						translate(v = [7.5, -22.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, -15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 22.5, -100.0]) {
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
						translate(v = [22.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [22.5, 0.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [22.5, 7.5, -100.0]) {
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
						translate(v = [-7.5, -22.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, -15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [-7.5, 22.5, -100.0]) {
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
						translate(v = [7.5, -22.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, -15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 15.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [7.5, 22.5, -100.0]) {
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
						translate(v = [22.5, -7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [22.5, 0.0, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [22.5, 7.5, -100.0]) {
							cylinder(h = 200, r = 1.8);
						}
						translate(v = [0, 0, -3.0]) {
							union() {
								difference() {
									cylinder(h = 6.0, r = 8.5);
									cylinder(h = 6.0, r = 3.0);
								}
								difference() {
									translate(v = [0, 0, -50]) {
										cylinder(h = 100, r = 6.5);
									}
								}
							}
						}
					}
				}
			}
		}
		oobb_gear_spur_raw(backlash = 0.2, gear_bevel = 1, gear_mod = 1.5, shaft_diam = 0, teeth = 40, thickness = 9);
	}
	union() {
		translate(v = [7.5, 15, 4.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
						#translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.8);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-7.5, -15, 4.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
						#translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.8);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [-15, 7.5, 4.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
						#translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.8);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [15, -7.5, 4.5]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					union() {
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						translate(v = [0, 0, -9.0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									union() {
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										##linear_extrude(height = 2.5) {
											polygon(points = [[3.4619999999999997, 0.0], [1.7310000000000003, 2.9981799479017264], [-1.7309999999999992, 2.9981799479017264], [-3.4619999999999997, 4.2397272186481365e-16], [-1.7310000000000014, -2.998179947901726], [1.7309999999999977, -2.9981799479017277]]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, -0.3]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, -0.6]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
										#translate(v = [-1.75, -3.25, 2.5]) {
											cube(size = [3.5, 6.5, 0.3]);
										}
										#translate(v = [-1.75, -1.75, 2.8]) {
											cube(size = [3.5, 3.5, 0.3]);
										}
									}
									union();
								}
							}
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
						#translate(v = [0, 0, -1.9]) {
							cylinder(h = 1.9, r1 = 1.8, r2 = 3.6);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.8);
						}
						#translate(v = [0, 0, -9.0]) {
							cylinder(h = 9, r = 1.5);
						}
					}
					union();
				}
			}
		}
		translate(v = [0, 0, -4.5]) {
			cylinder(h = 9, r = 3.25);
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
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 15.0, -100.0]) {
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
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 15.0, -100.0]) {
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
		translate(v = [-15.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 0.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [-15.0, 15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, -15.0, -100.0]) {
			cylinder(h = 200, r = 3.25);
		}
		translate(v = [0.0, 15.0, -100.0]) {
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
		translate(v = [-22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-22.5, 7.5, -100.0]) {
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
		translate(v = [-7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 22.5, -100.0]) {
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
		translate(v = [7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 22.5, -100.0]) {
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
		translate(v = [22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 7.5, -100.0]) {
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
		translate(v = [-7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 22.5, -100.0]) {
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
		translate(v = [7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 22.5, -100.0]) {
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
		translate(v = [22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 7.5, -100.0]) {
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
		translate(v = [-7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [-7.5, 22.5, -100.0]) {
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
		translate(v = [7.5, -22.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 15.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [7.5, 22.5, -100.0]) {
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
		translate(v = [22.5, -7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 0.0, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [22.5, 7.5, -100.0]) {
			cylinder(h = 200, r = 1.8);
		}
		translate(v = [0, 0, -3.0]) {
			union() {
				difference() {
					cylinder(h = 6.0, r = 8.5);
					cylinder(h = 6.0, r = 3.0);
				}
				difference() {
					translate(v = [0, 0, -50]) {
						cylinder(h = 100, r = 6.5);
					}
				}
			}
		}
		translate(v = [-250.0, -250.0, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0, -250.0, 0]) {
			cube(size = [500, 500, 500]);
		}
		translate(v = [-250.0, -250.0, 0]) {
			cube(size = [500, 500, 500]);
		}
	}
}
