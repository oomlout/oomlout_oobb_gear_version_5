// Cutaway of the actual 6 mm printable part. Bed is Z=0; no pedestal is added.
color("gold") intersection() {
    translate([0,0,3])
        import("../parts/oobb_part_gear_big_scale_4_diameter_40_teeth_bevel_style_6_mm_depth/3dpr.stl");
    translate([-60,0,-1]) cube([120,60,10]);
}
