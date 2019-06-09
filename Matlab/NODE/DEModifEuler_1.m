function [y1,y2] = DEModifEuler_1(h,a,b,y0,y10)
format long;
N = (b-a)/h;
y1 = zeros(N+1,1);
y2 = zeros(N+1,1);
x = a:h:b;
y1(1) = y0;
y2(1) = y10;


for i=1:N
v1=y1(i)+y2(i).*h;
t=y1(i) + h*v1;
v2=t+y2(i).*h;
y1(i+1)=y1(i)+(v1+v2).*h/2;


v3=y2(i)+64*y1(i)+16*cos(8*x(i));
t2=y2(i) + h*v3;
v4=t+64*y1(i)+16*cos(8*x(i));
y2(i+1)=y2(i)+h*(v3+v4)/2;
end
format short;





