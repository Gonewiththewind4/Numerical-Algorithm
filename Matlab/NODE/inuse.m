%第一题
%%
f=@(x,y)y-2*x/y;
h=0.1;
a=0;
b=1;
y0=1;
sss=0:0.1:1;
ssy=sqrt(1+2*sss);
y1 = DEEuler(f,h,a,b,y0);
wuchay1= y1-ssy';
var1=var(wuchay1);
y2 = DEimpEuler(f,h,a,b,y0);
wuchay2= y2-ssy';
var2=var(wuchay2);
y3 = DEModifEuler(f,h,a,b,y0);
wuchay3= y3-ssy';
var3=var(wuchay3);

%第二题
%%
f=@(x,y)-y+2.*cos(x);
y0=1;
h=0.1;
a=0;
b=10;
x = a:h:b;
fd=@(x)sin(x)+cos(x);
y4=fd(x);
y5 = rk4_lungkuta(f, h,a,b,y0);
wucha4 = y4'-y5;
plot(x',y4-0.1,'y')
hold on
plot(x',y5,'r')
hold on
plot(x',wucha4)
title('王博隆  31140302');


%第三题
%%
f=@(x,y)y.*y.*exp(-x);
y0=1;
h=0.1;
a=1;
b=2;
y6 = DEYCJZ_ydsin (f, h,a,b,y0);
y7 = DEYCJZ_ydsout (f, h,a,b,y0);


%第四题
%%
%y1=y;
%y2=dy;
%方程可化为
  %d(ym)=yn
  %d(yn)=16*cos(8.*t)-64*ym
  %y1(0)=0
  %y2(0)=0
f1=@(yn,yu)yn ;
f2=@(x,y)16*cos(8.*x)-32*y*y;
ym0=0;
yn0=0;
h=0.05;
a=0;
b=1;
sss=0:0.05:1;
ssy=sss.*sin(8.*sss);
dssy=sin(8.*sss)+8.*sss.*cos(8.*sss);
y8 = DEEuler(f1,h,a,b,ym0);
y81 = DEEuler_1(f2,h,a,b,yn0,-64*y8);
wuchay8= y8-ssy';
wuchay81= y81-dssy';
var8=var(wuchay8);
var81=var(wuchay81);
y9 = DEimpEuler(f1,h,a,b,ym0);
y91 = DEimpEuler_1(f2,h,a,b,yn0,-64*y9);
wuchay9= y9-ssy';
wuchay91= y91-dssy';
var9=var(wuchay9);
var91=var(wuchay91);
y10 = DEModifEuler(f1,h,a,b,ym0);
y101 = DEModifEuler_1(f2,h,a,b,yn0,-64*y10);
wuchay10= y10-ssy';
wuchay101= y101-dssy';
var10=var(wuchay10);
var101=var(wuchay101);


rr=dsolve('Dy=16*cos(8.*x)-32*y*y', 'y(0)=0', 'x')
%第四题
%%
ym0=0;
yn0=0;
h=0.05;
a=0;
b=1;
[ycc,yc] = DEEuler_1( h,a,b,ym0,yn0);
[ydd,yd] = DEimpEuler_1( h,a,b,ym0,yn0);
[yee,ye] = DEModifEuler_1(h,a,b,ym0,yn0);






