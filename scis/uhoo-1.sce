//9 January 2007  --  Uhoo Version 1
//
//Draw the Uhoo Shape
//Create a new graphic window
//xset('window',1);
//xset('font',2,2);
//Define window coordinates
xmin = -15; ymin = -15; xmax = 15; ymax = 15;
plot2d(0,0,-1,"010"," ",[xmin,ymin,xmax,ymax])
//isoview(xmin,xmax,ymin,ymax);

//xfarc(-0.25,-4.75,0.5,0.5,0*64,360*64)
//xstring(0.2,-5,'bc');

//xfarc(-2.5,-0.35,0.5,0.5,0*64,360*64)

//xstring(-1.7,-0.6,'ab');
//xfarc(2.0,-0.4,0.5,0.5,0*64,360*64)
//xstring(1.3,-0.6,'ac');


//Draw Circles centered on the corners
//xarc(-2,7,4,4,0*64,360*64) //a
//xarc(-7,-3,4,4,0*64,360*64) //b
//xarc(3,-3,4,4,0*64,360*64) //c

//Define the reference ray that intersects the
//center of the plot window along the y-axis

//reference ray
xc = [0,0]; yc = [5,-8];
//xstring(1,-15,'alpha');
xstring(-1.2,-15,'g');
xpoly(xc,yc,"lines",0)
xarrows([0,0],[5,-15],9,5);

//Define points symmetrically divided into 2-space
//with reference to the ray
//xfarc(-0.2,5.2,0.4,0.4,0*64,360*64)
xstring(-0.3,5.3,'a');
//xfarc(-5,-5,0.4,0.4,0*64,360*64)
xstring(-6.1,-5.3,'b');
//xfarc(5,-5,0.4,0.4,0*64,360*64)
xstring(6.1,-5.3,'c');
//xfarc(
xstring(-0.9,-6.3,'d');

//Define the triangle based on the points and
//label distances represented
xc = [0,5,-5,0]; yc = [5,-5,-5,5];
xpoly(xc,yc,"lines",0)
//xstring(4.5,-2.6,'5.59017');
//xstring(-2.5,-6,'5');
//xstring(2.5,-6,'5');
//xstring(0.5,-0.5,'10');
//xstring(-6.5,-0.5,'11.18034');

//Calculate the trajectory of the rays by drawing
//two more triangles of base 2*bc

xarrows([-10,10],[5,5],0,2);
xstring(-5.5,5.2,'2*bc');
xarrows([-10,0],[5,-15],0,2);
xstring(-7.0,-10,'2*ab[ac]');
xarrows([10,0],[5,-15],0,2);

//Draw rays from center of theta b & c
//xc = [-5,7]; yc = [-5,2.3];
//xpoly(xc,yc,"lines",0)
xarrows([-5,10],[-5,5],9,5);
//xstring(10.5,4.5,'beta');
xstring(10.5,4.5,'h');
xstring(3,-0.7,'e');

//xc = [5,-7]; yc = [-5,2.3];
//xpoly(xc,yc,"lines",0)
xarrows([5,-10],[-5,5],9,5);
//xstring(-12.5,4.5,'delta');
xstring(-10.7,4.5,'i');
xstring(-3.5,-0.9,'f');

//Locate the center of mass 'm'
xfarc(-0.2,-1.5,0.4,0.4,0*64,360*64)
xstring(0.3,-3.3,'m');

//Confirmation intersection
xarrows([-0.5,0.5],[-1.7,-1.7],0,1);
xarrows([0,0],[-1.2,-2.2],0,1);

//Draw figure title
xstring(2,9,'Result of Agent Walking');

//Save the iteration
//xsave(f:/Uhoo/uhoo.scg);

