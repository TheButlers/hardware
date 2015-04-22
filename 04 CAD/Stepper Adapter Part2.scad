bignum = 999;
smallnum=0.001;
boardheight = 1;
holderx=46;
holdery=33;
holderz=3;
plateheight=2;
boardheight=1;
holeinset=3;
extrashift=5;

difference(){
    translate([-holdery/2,boardheight,plateheight]) 
        cube([holdery,holderz,holderx+extrashift]);
      

    translate([-holdery/2+holeinset,bignum/2,plateheight+holeinset+extrashift]) rotate([90,0,0]) cylinder(r=1.6, h=bignum);
    translate([+holdery/2-holeinset,bignum/2,plateheight+holeinset+extrashift]) rotate([90,0,0]) cylinder(r=1.6, h=bignum);
    translate([-holdery/2+holeinset,bignum/2,holderx+plateheight+extrashift-holeinset]) rotate([90,0,0]) cylinder(r=1.6, h=bignum);
    translate([+holdery/2-holeinset,bignum/2,holderx+plateheight+extrashift-holeinset]) rotate([90,0,0]) cylinder(r=1.6, h=bignum);
}


difference(){
    cylinder(h=plateheight, r=(47/2));
  
    rotate([0,0,45])union(){
        rotate([0,0,0]) translate([17,0,0]) cylinder(r=1.8, h=bignum);
        rotate([0,0,90]) translate([17,0,0]) cylinder(r=1.8, h=bignum);
        rotate([0,0,180]) translate([17,0,0]) cylinder(r=1.8, h=bignum);
        rotate([0,0,270]) translate([17,0,0]) cylinder(r=1.8, h=bignum);
        }
    
}


