//14 February 2007
//Uhoo Algorithm

//Create a new graphic window
//xset('window',1);
//xset('font',2,2);

//Define window coordinates
xmin = -7; ymin = -17; xmax = 10; ymax = 7;
plot2d(0,0,-1,"010"," ",[xmin,ymin,xmax,ymax])
//isoview(xmin,xmax,ymin,ymax);


//BEGIN
//Pick an arbitrary point on the Einsteinian space-time manifold,
//call it (0,0), and run a Cartesian grid in four directions with
//each ray trajectory 90 degrees from its left and right nearest
//neighbor in 2 dimensions. Label one axis 'x' and name the other
//axis firstly encountered in a counterclockwise rotation 'y'. Create
//three agents who posses two closed elastic strings between them;
//walk from (0,0) and mark stops using points. Use numbers for edges
//and letters for points: 

xstring(-0.2,5.3,'0');
xfarc(-0.2,5.2,0.4,0.4,0*64,360*64)//walk +y, vertex at (0,5)
xstring(-0.9,-6.3,'a');
xfarc(-0.2,-4.8,0.4,0.4,0*64,360*64)//walk -y, vertex at (0,-5)
xstring(-6.1,-5.3,'1');
xfarc(-5.2,-4.8,0.4,0.4,0*64,360*64)//walk +x, vertex at (-5,-5)
xstring(5.6,-5.3,'2');
xfarc(4.8,-4.8,0.4,0.4,0*64,360*64)//walk -x, vertex at (5,-5)

//Draw tight the first elastic string and pin to the edge points (1,2,3).
//This is the first polygon of three vertices:
xc = [0,-5,5,0]; yc = [5,-5,-5,5];//[(0,5),(-5,-5),(5,-5)]
xpoly(xc,yc,"lines",0)

//Scribe Circles with a diameter of 2 units centered on vertices 2 and 3:
xstring(-9.1,-5.3,'alpha');
xarc(-7,-3,4,4,0*64,360*64)//vertex at (-5,-5)
xstring(7.4,-5.3,'beta');
xarc(3,-3,4,4,0*64,360*64)//vertex at (5,-5)

//Cast a ray that intersects 'a' continuing to twice the distance:
xarrows([0,0],[5,-15],9,5);
//and mark the edge point:
xstring(-1.0,-16,'3');
xfarc(-0.2,-14.8,0.4,0.4,0*64,360*64)//vertex at (0,-15)

//Use a compass of quantity theta and cast rays that intersect
//'b' and 'c' continuing to twice the distance:

//RIGHT TRACING RAY
//mark the trajectory point:
xstring(3.2,-0.8,'b');
xfarc(2.3,0.2,0.4,0.4,0*64,360*64)//vertex at (2.5,0)
xarrows([-5,10],[-5,5],9,5);
//and mark the edge point:
xstring(10.6,4.8,'4');
xfarc(9.8,5.2,0.4,0.4,0*64,360*64)//vertex at (10,5)

//LEFT TRACING RAY
//mark the trajectory point:
xstring(-3.4,-0.8,'c');
xfarc(-2.7,0.2,0.4,0.4,0*64,360*64)//vertex at (-2.5,0)
xarrows([5,-10],[-5,5],9,5);
//and mark the edge point:
xstring(-10.9,4.8,'5');
xfarc(-10.2,5.2,0.4,0.4,0*64,360*64)//vertex at (-10,5)

//Draw tight the second elastic string and pin to the edge points (4,5,6).
//This is the second polygon of three vertices:
xc = [0,10,-10,0]; yc = [-15,5,5,-15];//[(0,-15),(10,5),(-10,5)]
xpoly(xc,yc,"lines",0)

//Locate the center of mass 'm':
xstring(0.3,-3.3,'m');
xfarc(-0.2,-1.5,0.4,0.4,0*64,360*64)//vertex at (0,-1.7)

//Now agents can traverse the paths and access each of the dataspaces assigned
//by a coordinate of three points.

//Optional! Ray cast overlay to illustrate color:
//xarrows([-10,10],[5,5],0,2);
//xarrows([-10,0],[5,-15],0,2);
//xarrows([10,0],[5,-15],0,2);

//Title the result
//xstring(3.5,-16,'Graph of Algorithm');

//END OF FILE
