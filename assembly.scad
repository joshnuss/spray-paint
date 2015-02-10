include <defs.scad>
use <can.scad>
use <mount.scad>

can();

color("orange")
translate([0,0,CAN_HEIGHT*0.75]) rotate([0,0,90]) union() {
  mount_side();
  mirror([0,1,0]) mount_side();
}
