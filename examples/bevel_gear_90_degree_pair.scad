// Generate the family first: python action_make_bevel_gears.py
include <../parts/scad_reference/oobb_gear_bevel_raw.scad>
$fn = 80;

// Equal-size 1:1 pair. Change both gears together.
teeth = 40;
gear_mod = 1.5;       // 0.75 for little scale
depth = 6;           // 6 or 9 mm overall axial envelope
face_width = oobb_gear_bevel_face_width(teeth,teeth,gear_mod,depth,gear_mod/4);
bore = gear_mod == 1.5 ? 6.5 : 3.6;
backlash = gear_mod == 1.5 ? 0.2 : 0.15;
angle = 360*$t;      // Enable View -> Animate to turn the pair.
check_interference = false;
check_steps = 1;      // Set to 8+ to check several positions across one tooth cycle.

// Both pitch-cone apexes are at [0,0,0]. The local +Z axes point inward.
module first(a=angle) {
    rotate([0,0,a])
        oobb_gear_bevel_raw(teeth=teeth, mate_teeth=teeth, gear_mod=gear_mod,
            depth=depth, face_width=face_width, shaft_diam=bore,
            backlash=backlash, clearance=gear_mod/4, anchor="apex");
}
module second(a=angle) {
    rotate([-90,0,0]) rotate([0,0,-a+180/teeth])
        oobb_gear_bevel_raw(teeth=teeth, mate_teeth=teeth, gear_mod=gear_mod,
            depth=depth, face_width=face_width, shaft_diam=bore,
            backlash=backlash, clearance=gear_mod/4, anchor="apex");
}
if (check_interference) {
    for (step=[0:check_steps-1])
        intersection() {
            first(angle+step*360/teeth/check_steps);
            second(angle+step*360/teeth/check_steps);
        }
} else {
    color("orange") first();
    color("steelblue") second();
}
