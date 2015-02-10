include <defs.scad>
use <can.scad>
use <mount.scad>
use <plate.scad>

can();

color("orange", 0.8)
translate([0,0,CAN_HEIGHT*0.75]) rotate([0,0,90]) union() {
  mount_side();
  mirror([0,1,0]) mount_side();
}

color("orange", 0.8)
  translate([0,0,(CAN_HEIGHT*0.75)+MOUNT_RISER_HEIGHT+2]) rotate([0,0,90])
  plate();
