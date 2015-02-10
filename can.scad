include <defs.scad>

module can() {
  union () {
    translate([0,0, CAN_HEIGHT+CAN_TOP_HEIGHT]) cap();

    color("silver", 0.7) union() {
      can_body();
      translate([0,0,CAN_HEIGHT]) can_top();
    }
  }
}

module can_body() {
  cylinder(CAN_HEIGHT, d=CAN_DIAMETER, $fn=80);
}

module can_top() {
  difference() {
    sphere(d=CAN_TOP_BOTTOM_DIAMETER+9, $fn=100);
    translate([0,0,CAN_TOP_BOTTOM_DIAMETER/2]) cylinder(d=CAP_RIM_DIAMETER+2, h=4);
  }
}

module cap_rim() {
  cylinder(CAP_RIM_HEIGHT, d=CAP_RIM_DIAMETER, $fn=80);
}

module cap_body() {
  cylinder(CAP_BODY_HEIGHT, d=CAP_BODY_DIAMETER, $fn=80);
}

module cap() {
  union() {
    color("white")
    difference() {
      union() {
        cap_rim();

        translate([0,0,CAP_RIM_HEIGHT]) cap_body();
      }
      translate([0,-4,CAP_BODY_HEIGHT*3]) sphere(CAP_BODY_DIAMETER, $fn=100);
    }
    color("red") translate([0,1,10]) rotate([90,0,0]) cylinder(h=CAP_BODY_DIAMETER-1, d=4, center=true, $fn=80);
  }
}

can();
