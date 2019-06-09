function y = DEYCJZ_ydsin (f, h,a,b,y0) 
format long;
N = (b-a)/h;
y = zeros(N+1,1);
x = a:h:b;
y(1) = y0;
y(2) = y0+h*f(x(1),y(1));
y(3) = y(2)+h*f(x(2),y(2));
y(4) = y(3)+h*f(x(3),y(3));

for i=5:N+1    
    v1 =f(x(i-4),y(i-4));
    v2 = f(x(i-3) ,y(i-3));
    v3 = f(x(i-2), y(i-2));
    v4 = f(x(i-1) ,y(i-1));
    t = y(i-1) + h*(55*v4 - 59*v3 + 37*v2 - 9*v1)/24;
    ft =f(x(i) ,t);
    y(i) = y(i-1)+h*(9*ft+19*v4-5*v3+v2)/24;
end
format short;
