$fn = 30;
include <fillets.scad>;

module profile4040(length) {

  module groove(length) {
    union() {
      translate([0, 18, 0]) cube ([10.2, 4, length+1], center=true);
      translate([0, 19.5, 0]) cube ([12.2, 1.5, length+1], center=true);
      difference() {
        difference() {
          translate([0, 13, 0]) cube ([20.2, 7, length+1], center=true);
          translate([10,7.5,0]) rotate(a = 45, v = [0, 0, 1]) cube([8, 7, length+1], center=true);
        }
         translate([-10,7.5,0]) rotate(a = 45, v = [0, 0, 1]) cube([7, 7, length+1], center=true);
      }
    }
  }

  difference() {
    cube([40, 40, length], center=true);
    groove(length);
    rotate (a = 90, v=[0,0,1]) groove(length);
    rotate (a = 180, v=[0,0,1]) groove(length);
    rotate (a = -90, v=[0,0,1]) groove(length);

  }
}

module profile3030(length) {

  module groove(length) {
    union() {
      translate([0, 4.5, 0]) cube ([8.2, 2.3, length+1], center=true);
      translate([0, 5.5, 0]) cube ([9.8, 1.5, length+1], center=true);
      difference() {
        difference() {
          cube ([16.2, 6.8, length+1], center=true);
          translate([8.1,-3.4,0]) rotate(a = 45, v = [0, 0, 1]) cube([4, 4, length+1], center=true);
        }
         translate([-8.1,-3.4,0]) rotate(a = 45, v = [0, 0, 1]) cube([4, 4, length+1], center=true);
      }
    }
  }

  /*groove(length);*/
  difference() {
    cube([30, 30, length], center=true);
    translate([0, 9.5, 0]) groove(length);
    rotate (a = 90, v=[0,0,1]) translate([0, 9.5, 0]) groove(length);
    rotate (a = 180, v=[0,0,1]) translate([0, 9.5, 0])  groove(length);
    rotate (a = -90, v=[0,0,1]) translate([0, 9.5, 0])  groove(length);

  }
}

module profile2020(length) {

  module groove(length) {
    union() {
       rotate( a=-45, v=[0,0,1]) cube ([6.5, 6.5, length+1], center=false);
      difference() {
        difference() {
          translate([0, 2.2, 0]) cube ([9.5, 4, length+1], center=false);
          translate([0, 3.4,-1]) rotate(a = 45, v = [0, 0, 1]) cube([4, 4, length+3], center=false);
        }
         translate([9.5,3.4,-1]) rotate(a = 45, v = [0, 0, 1]) cube([4, 4, length+3], center=false);
      }
    }
  }

  difference() {
    cube([20, 20, length], center=false);
    translate([5.25, -0.5, -1]) groove(length+3);
    translate([-0.5, 14.75, -1]) rotate (a = -90, v=[0,0,1]) groove(length+3);
     translate([14.75, 20.5, -1]) rotate (a = 180, v=[0,0,1]) groove(length+3);
     translate([20.5, 5.25, -1]) rotate (a = 90, v=[0,0,1]) groove(length+3);

  }
}

module profile2040(length) {
  union() {
    profile2020(length);
    translate([0, 20, 0])profile2020(length);
  }
}

/*profile2040(60);*/
/*groove(20);*/
