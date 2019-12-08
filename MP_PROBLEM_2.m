x1 = input('Enter x-coordinate of point 1: ');
y1 = input('Enter y-coordinate of point 1: ');

x2 = input('Enter x-coordinate of point 2: ');
y2 = input('Enter y-coordinate of point 2: ');

x3 = input('Enter x-coordinate of point 3: ');
y3 = input('Enter y-coordinate of point 3: ');

a = [x1,y1,1; x2,y2,1; x3,y3,1];
d = [((x1^2)+(y1^2)),y1,1; ((x2^2)+(y2^2)),y2,1; ((x3^2)+(y3^2)),y3,1];
e = [((x1^2)+(y1^2)),x1,1; ((x2^2)+(y2^2)),x2,1; ((x3^2)+(y3^2)),x3,1];
f = [((x1^2)+(y1^2)),x1,y1; ((x2^2)+(y2^2)),x2,y2; ((x3^2)+(y3^2)),x3,y3];

A = det(a);
d1 = -det(d);
e1 = det(e);
f1 = -det(f);

h = round(((-d1)/(2*A)),2);
k = round(((-e1)/(2*A)),2);

r = round((sqrt(((d1^2)+(e1^2)-(4*A*f1))/(4*(A^2)))),2);
D = round((d1/A),2);
E = round((e1/A),2);
F = round((f1/A),2);

center = [h,k];
vector = [D,E,F];

disp('Center: '); 
disp(center);

disp('Radius: ');
disp(r);

disp('Vector: ');
disp(vector);



