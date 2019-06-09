function y = DEModifEuler(f, h,a,b,y0)
format long;
N = (b-a)/h;
y = zeros(N+1,1);
y(1) = y0;
x = a:h:b;

for i=2:N+1
        v1 = f(x(i-1), y(i-1));
        t = y(i-1) + h*v1;
        v2 = f(x(i), t);
        y(i) = y(i-1)+h*(v1+v2)/2;
end
format short;