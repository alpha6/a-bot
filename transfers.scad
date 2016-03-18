module sc10uu() {
  difference() {
    cube ([40, 35, 26]);
    translate([20, 36, 13]) rotate(a=90, v=[1,0,0]) cylinder(r=5, h=37);
    translate([-1, -1, 21]) cube ([11, 37, 6]);
    translate([30, -1, 21]) cube ([11, 37, 6]);
    translate([3, 36, 28]) rotate (a = 45, v = [0, 1,0]) rotate (a = 90, v =[1,0,0]) cube ([10, 10, 37]);
    translate([23, 36, 28]) rotate (a = 45, v = [0, 1,0]) rotate (a = 90, v =[1,0,0]) cube ([10, 10, 37]);
  }
}

module sc10luu() {
  difference() {
    cube ([40, 68, 26]);
    translate([20, 69, 13]) rotate(a=90, v=[1,0,0]) cylinder(r=5, h=70);
    translate([-1, -1, 21]) cube ([11, 70, 6]);
    translate([30, -1, 21]) cube ([11, 70, 6]);
    translate([3, 69, 28]) rotate (a = 45, v = [0, 1,0]) rotate (a = 90, v =[1,0,0]) cube ([10, 10, 70]);
    translate([23, 69, 28]) rotate (a = 45, v = [0, 1,0]) rotate (a = 90, v =[1,0,0]) cube ([10, 10, 70]);
  }
}

module wcs10(length) {
  cylinder($fn = 30, r = 5, h = length);
}

module sh10(){
  difference() {
    union() {
      cube([32.8, 18, 14], center=true); //base
      translate([-13.4, 0, 0]) cube([6, 42, 14], center=true); //основание
    }

    translate([4.4, 0, 0]) cylinder(r=5, h=16, center=true);
    translate([-13.4, -16, 0]) rotate (a=90, v=[0, 1,0]) cylinder($fn = 20, r=2, h=8, center=true);
    translate([-13.4, 16, 0]) rotate (a=90, v=[0, 1,0]) cylinder($fn = 20, r=2, h=8, center=true);
  }

}

sc10luu();

wcs10(50);
sh10();
