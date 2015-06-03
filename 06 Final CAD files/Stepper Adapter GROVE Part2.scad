smallnum = 0.05;
bignum = 10;
icanvasx= 42;
icanvasy = 24;
ocanvasx= 43.11;
ocanvasy = 25.06;

boardheight = 1.5;
holderx=46;
holdery=33;
holderz=4;


difference(){
    cube([holderx,holdery,holderz]);
    translate([ocanvasx-icanvasx+2, (holdery-icanvasy)/2, -smallnum]) linear_extrude(height = bignum)
        import (file = "IMU-InsetDXF.dxf"); 
    translate([2, (holdery-ocanvasy)/2, holderz-boardheight-smallnum]) linear_extrude(height = bignum)import (file = "IMU-Outset2DXF.dxf");
       
    
    translate([3,3,0]) cylinder(r=1.9,h=bignum, center=true);
    translate([3,holdery-3,0]) cylinder(r=1.9,h=bignum, center=true);
    translate([holderx-3,holdery-3,0]) cylinder(r=1.9,h=bignum, center=true);
    translate([holderx-3,3,0]) cylinder(r=1.9,h=bignum, center=true);
}


