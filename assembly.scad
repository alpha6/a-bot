use <frame.scad>;
use <hotbed.scad>;
use <profile.scad>;
use <transfers.scad>;
use <../MCAD/stepper.scad>;

module left_rear_idler() {
  import ("dbot/Left_Rear_Idler_RevB.stl", convexity=3);
}

module right_rear_idler() {
  import ("dbot/Right_Rear_Idler_RevB.stl", convexity=5);
}

module left_motor_mount() {
  import ("dbot/LeftFrontMotorMount.stl", convexity=5);
}

module right_motor_mount() {
  import ("dbot/RightFrontMotorMount.stl", convexity=5);
}

module bed_frame() {
  bed_heigth = 200;
  profile = 20;

  translate([40, 30, bed_heigth]) rotate (a = 90, v = [0, 1,0]) rotate (a = 90, v = [0,0,1])  profile2040(440); //front bed support
  translate([40, 500, bed_heigth]) rotate (a = 90, v = [0, 1,0]) rotate (a = 90, v = [0,0,1])  profile2040(440); //rear bed support
  translate([40, 500, bed_heigth]) rotate (a = 90, v = [1,0,0])  profile2040(450); //rear bed support
  translate([460, 500, bed_heigth]) rotate (a = 90, v = [1,0,0])  profile2040(450); //rear bed support

  translate ([60, 80, bed_heigth+profile *2]) hotbed(400, 400);
  translate([40,60,bed_heigth]) rotate (a=-90, v=[0,0,1]) rotate (a=90, v=[1,0,0]) sc10luu(); //front left
  translate([480,20,bed_heigth]) rotate (a=90, v=[0,0,1]) rotate (a=90, v=[1,0,0]) sc10luu(); //front right
  translate([80,520,bed_heigth]) rotate (a = 180, v = [0,0,1]) rotate (a=90, v=[1,0,0]) sc10luu(); //rear left
  translate([480,520,bed_heigth]) rotate (a = 180, v = [0,0,1]) rotate (a=90, v=[1,0,0]) sc10luu(); //rear right
}

frame (520, 500, 500);

translate([-20, 545, 480]) rotate (a = 90, v =[ 1, 0, 0]) left_rear_idler();
translate([450, 546, 481]) rotate (a = 90, v =[ 1, 0, 0]) right_rear_idler();
translate([-25, 20, 460]) rotate(a = -90, v = [0, 1, 0]) rotate(a = 180, v = [1, 0, 0]) left_motor_mount();
translate([544, 19, 461]) rotate(a = -90, v = [0, 0, 1]) rotate(a = 90, v = [1, 0, 0]) right_motor_mount();

/*nema_demo();*/
/*translate ([0, -30 ,515]) rotate (a = 180, v = [1, 0,0]) motor(); //left motor
translate ([500, -30 ,495]) rotate (a = 180, v = [1, 0,0]) motor(); // right motor*/

//hotbed
bed_frame();

translate([25, 36, -10]) rotate (a=90, v=[0,0,1]) sh10(); //front left bottom
translate([25, 36, 480]) rotate (a=90, v=[0,0,1]) sh10(); //front left bottom
translate([490, 36, -10]) rotate (a=90, v=[0,0,1]) sh10(); //front rigth bottom
translate([490, 36, 480]) rotate (a=90, v=[0,0,1]) sh10(); //front rigth bottom

translate([25, 40, -10]) wcs10(500); //front left
translate([490, 40, -10]) wcs10(500); //front rigth

translate([60, 530, 0]) wcs10(500);
translate([460, 530, 0]) wcs10(500);
