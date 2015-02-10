CAN_HEIGHT_MM = 142;
CAN_DIAMETER_MM = 65;
CAN_TOP_BOTTOM_DIAMETER_MM=46;
CAN_TOP_TOP_DIAMETER_MM=32;
CAN_TOP_HEIGHT_MM=24;

module can() {
  union() {
    can_body();
    translate([0,0,CAN_HEIGHT_MM]) can_top();
  }
}

module can_body() {
  cylinder(CAN_HEIGHT_MM, d=CAN_DIAMETER_MM, $fn=80);
}

module can_top() {
  cylinder(d1=CAN_TOP_BOTTOM_DIAMETER_MM, d2=CAN_TOP_TOP_DIAMETER_MM, h=CAN_TOP_HEIGHT_MM, $fn=80);
}

can();
