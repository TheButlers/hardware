tubed = 32.5;
stepperi = 71.5;
steppero = 77;
wallthickness = 5;
depthi = 10;
deptho = 10;
extraheight = 2;
bignum = 999;
smallnum = 0.01;

difference(){
    cylinder(d=steppero+wallthickness,h=depthi+extraheight);
    translate([0,0, extraheight]) cylinder(d=steppero,h=bignum);
    cylinder(d=tubed, h = bignum, center = true);
}
difference(){
    cylinder(d=stepperi, h = depthi+extraheight);
    cylinder(d=tubed, h = bignum, center = true);
}