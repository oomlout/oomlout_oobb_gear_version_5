// Actual OOBB printable parts, including mode-specific holes.
include <../parts/scad_reference/oobb_gear_bevel_raw.scad>
$fn = 80;
angle = 360*$t;
teeth = 40;
gear_mod = 1.5;
depth = 6;
backlash = 0.2;

// Measure exactly as the primitive does. This locates the pitch apex of the
// centered STL without estimating it from the total depth or the flat top.
base = oobb_gear_bevel_base_z(teeth,teeth,gear_mod,20,backlash,gear_mod/4);
center_to_apex = gear_mod*teeth/2 - base - depth/2;
module printed_gear() {
    translate([0,0,-center_to_apex])
        import("../parts/oobb_part_gear_big_scale_4_diameter_40_teeth_bevel_style_6_mm_depth/3dpr.stl");
}
color("orange") rotate([0,0,angle]) printed_gear();
color("steelblue") rotate([-90,0,0]) rotate([0,0,-angle+180/teeth]) printed_gear();
