use <profile.scad>;

module bottom_frame(length, width) {
  profile = 20;
  side_length = width+profile*2;
  p_half = profile/2;
  rotate (a = 90, v = [0,1,0]) profile2020(length);
  translate([0, width+profile, 0]) rotate (a = 90, v = [0,1,0]) profile2020(length);
  translate([-profile, 0, 0]) rotate (a = -90, v = [1,0,0]) profile2020(side_length);
  translate([length, 0, 0]) rotate (a = -90, v = [1,0,0]) profile2020(side_length);

}

module middle_frame(length, width, heigth) {
  profile = 20;
  side_length = length+profile*2;
  side_heigth = heigth+profile*2;
  p_half = profile/2;

  translate([profile, 0, 0]) rotate (a = 90, v = [0, 0, 1]) profile2040(heigth); //left front
  translate([profile, width+profile, 0]) rotate (a = 90, v = [0, 0, 1]) profile2040(heigth); //left back

  translate([length+profile, 0, 0]) rotate (a = 90, v = [0, 0, 1]) profile2040(heigth); //right front
  translate([length+profile, width+profile, 0]) rotate (a = 90, v = [0, 0, 1]) profile2040(heigth); //right back
}


module top_frame(length, width, heigth) {
  profile = 20;
  side_length = width+profile*2;
  p_half = profile/2;
  translate([profile, 0, heigth])rotate (a = 90, v = [0,1,0]) profile2020(length-profile*2); //Front top edge

  //rear top edge DUAL!
  translate([profile, width+profile, heigth]) rotate (a = 90, v = [0,1,0]) rotate (a = 90, v = [0,0,1]) profile2040(length-profile*2);


  //left top dual edge
  translate([-profile, width+profile, heigth]) rotate (a = 90, v = [1,0,0]) profile2040(width+profile);

  //Rigth top dual edge
  translate([length, width+profile, heigth]) rotate (a = 90, v = [1,0,0]) profile2040(width+profile);

}

module frame (length, width, heigth) {
  union () {
    bottom_frame(length, width);
    middle_frame(length, width, heigth);
    top_frame(length, width, heigth);
  }
}

frame(500, 500, 500);
