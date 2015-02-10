include <defs.scad>
use <can.scad>
use <mount.scad>

can();

translate([0,0,CAN_HEIGHT*0.75]) union() {
  mount_side();
  mirror([0,1,0]) mount_side();
}
