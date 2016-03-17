use <profile.scad>;

module hotbed(length, width) {
  translate([0, 0, 4]) color ("silver", 0.5) cube([length, width, 4]); //glass
  translate([0, 0, 2]) color ("silver", 1) cube([length, width, 4]); //Aluminium plate
  color ("red", 1) cube([length, width, 2]); //hotbed
}

/*hotbed(400, 400);*/

module bed_mount() {
  import ("dbot/Heated_Bed_Supports.stl");
}

/*bed_mount();*/
