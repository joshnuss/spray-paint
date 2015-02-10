include <defs.scad>

module plate() {
  difference() {
    cylinder(d=CAN_DIAMETER+MOUNT_THICKNESS, h=MOUNT_THICKNESS, $fn=100, center=true);

    translate([34,0,0])
    cube([CAN_DIAMETER+MOUNT_THICKNESS,CAN_DIAMETER+MOUNT_THICKNESS,MOUNT_HEIGHT+4], center=true);

    cylinder(d=40, h=MOUNT_HEIGHT, center=true, $fn=80);
  }
}
