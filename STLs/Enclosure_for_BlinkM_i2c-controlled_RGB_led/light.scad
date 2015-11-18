
/*
Enclosure for BlinkM RGB led by crox
http://www.thingiverse.com/thing:8159
*/

// comment out one at a time :o)
top();
//plate();
//box();
//back();



module top() {
  difference() {
    union() {
      difference() {
        cube(size = [45, 45, 1], center = true);
        translate(v = [0, 0, -5]) sphere(r = 17, $fn=80);
      }
      difference() {
         translate(v = [0, 0, -0.2]) cylinder(r = 18, h = 15, $fn=100);
        translate(v = [0, 0, -2]) cylinder(r = 17, h = 20, $fn=100);
      }
    }
    translate(v = [0, 0, -2]) corners();
  }
}

module plate() {
  difference() {
    cube(size = [45, 45, 1], center = true);
    translate(v = [0, -4, 0]) cube(size = [11, 16, 3], center = true);
    translate(v = [0, 0, -2]) corners();
  }
}

module box() {
  difference() {
    cube(size = [48, 48, 1], center = true);
    translate(v = [0, 0, -5]) cylinder(r = 19, h = 10, $fn=100);
  }
  translate(v = [0, 0, 6.5]) difference() {
    cube(size = [48, 48, 12], center = true);
    cube(size = [46, 46, 12], center = true);
  }
  corners();
}

module corner() {
  difference() {
    cube(size = [5, 5, 10], center=true);
    translate(v = [-3, -3, -10]) rotate(a=[0,0,45]) cube(size = [8, 8, 20]);
  }
}

module corners() {
  translate(v = [20.6, -20.6, 4.8]) corner();
  translate(v = [-20.6, 20.6, 4.8]) rotate(a=[0,0,180]) corner();
  translate(v = [20.6, 20.6, 4.8]) rotate(a=[0,0,90]) corner();
  translate(v = [-20.6, -20.6, 4.8]) rotate(a=[0,0,-90]) corner();
}

module back() {
  difference() {
    cube(size = [44, 44, 1], center = true);
    translate(v = [0, -10.7, 0]) cube(size = [18, 4, 10], center = true);
    translate(v = [0, 0, -5]) scale(v = [1.04, 1.04, 1.04]) corners();
  }
  translate(v = [0, -22.5, 13.5]) cube(size = [30, 1, 20], center = true);
  difference() {
    translate(v = [0, -21.95, 2.5]) rotate(a=[27,0,0]) cube(size = [30, 1, 3], center = true);
    translate(v = [0, -23.5, 0]) cube(size = [30, 1, 20], center = true);
    translate(v = [0, -20.5, 0]) cube(size = [30, 1, 5], center = true);
  }
  translate(v = [14.5, 0, 0]) support();
  translate(v = [-14.5, 0, 0]) support();
  translate(v = [0, -21.5, 1]) cube(size = [30, 1, 1], center = true);
}

module support() {
  translate(v = [0, -17, 5.4]) {
    difference() {
      cube(size = [1, 10, 10], center = true);
      translate(v = [0, 5, 5]) rotate(a=[45,0,0]) cube(size = [2, 15, 15], center = true);
    }
  }
}

