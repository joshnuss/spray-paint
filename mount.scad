include <defs.scad>

module mount_side() {
  union() {
    mount_wing();
    mount_flap();
    mirror([1,0,0]) mount_flap();
  }
}

module mount_wing() {
  difference() {
    difference() {
      cylinder(d=CAN_DIAMETER+MOUNT_THICKNESS, h=MOUNT_HEIGHT, $fn=100, center=true);
      translate([0,0,-2]) cylinder(d=CAN_DIAMETER, h=MOUNT_HEIGHT+6, $fn=100, center=true);
    }
    translate([0,(CAN_DIAMETER/2)-10,0]) cube([CAN_DIAMETER+MOUNT_THICKNESS, CAN_DIAMETER, MOUNT_HEIGHT+4], center=true);
  }
}

module mount_flap() {
  translate([(CAN_DIAMETER/2)+(MOUNT_FLAP_WIDTH/2)-(MOUNT_THICKNESS/2), -10, 0])
  difference() {
    cube([MOUNT_FLAP_WIDTH, MOUNT_THICKNESS/2, MOUNT_HEIGHT], center=true);

    mount_hole();
  }
}

module mount_hole() {
  rotate([90,0,0])
  cylinder(d=MOUNT_HOLE_DIAMETER, h=MOUNT_FLAP_WIDTH*2, center=true, $fn=100);
}
