bignum = 999;
difference(){
    cylinder(h=23, r=(47/2));
    translate([0,0,6]) cylinder (h=bignum, r=29.5/2);
    translate([0,0,13]) cylinder (h=bignum, r=38.5/2);
    translate([0,0,13]) union(){
        cube([bignum, bignum, bignum]);
        rotate([0,0,45]) cube([bignum, bignum, bignum]);       
    }
    translate([0,0,19])rotate([90,0,80]) cylinder(r=1.6, h=bignum);
    translate([0,0,19])rotate([90,0,240]) cylinder(r=1.6, h=bignum);
    translate([0,0,19])rotate([90,0,-20]) cylinder(r=1.6, h=bignum);
    rotate([0,0,0]) translate([17,0,0]) cylinder(r=1.6, h=bignum);
    rotate([0,0,90]) translate([17,0,0]) cylinder(r=1.6, h=bignum);
    rotate([0,0,180]) translate([17,0,0]) cylinder(r=1.6, h=bignum);
    rotate([0,0,270]) translate([17,0,0]) cylinder(r=1.6, h=bignum);
    
}


