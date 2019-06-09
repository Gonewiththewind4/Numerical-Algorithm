function [y1,y2] = DEEuler_1( h,a,b,y0,y10)
format long;
N = (b-a)/h;
y1 = zeros(N+1,1);
y2 = zeros(N+1,1);
x = a:h:b;
y1(1) = y0;
y2(1) = y10;
for i=1:N
    y1(i+1)=y1(i)+y2(i).*h;
    y2(i+1)=y2(i)+64*y1(i)+16*cos(8*x(i));
end
format short;



