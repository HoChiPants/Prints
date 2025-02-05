bevel = 4;

difference()
{
  intersection()
  {
    union()
    {
      translate([0,-10,0])
      rotate([-45,0,0])
      minkowski()
      {
        translate([0,0,-20])
        cylinder(r=29/2-bevel,h=80,$fn=60,center=false);
        sphere(r=bevel,$fn=60);
      }
      minkowski()
      {
        cylinder(r=80/2,h=2,$fn=60,center=false);
        sphere(r=bevel,$fn=60);
      }  
    }  
    translate([-100,-100,0])
    cube([200,200,200],center=false);  
  }
  union()
  {
    translate([30,0,-0.001])
    {
      cylinder(r=3.5/2,h=20,$fn=60);
      cylinder(r1=0,r2=3,h=6,$fn=60);
    }
    
    translate([-30,0,-0.001])
    {
      cylinder(r=3.5/2,h=20,$fn=60);
      cylinder(r1=0,r2=3,h=6,$fn=60);
    }
  }
}  
  