function y = rk4_lungkuta(f, h,a,b,y0)
format long;
N = (b-a)/h;
y = zeros(N+1,1);
y(1) = y0;
x = a:h:b;
%var = findsym(f);
%f=eval(['@(x,y)',vectorize(f)]);
for i=2:N+1 
    K1 = f(x(i-1),y(i-1));
    K2 = f(x(i-1)+h/2,y(i-1)+K1*h/2);
    K3 = f(x(i-1)+h/2,y(i-1)+K2*h/2);
    K4 = f(x(i-1)+h,y(i-1)+h*K3);
    y(i) = y(i-1)+h*(K1+2*K2+2*K3+K4)/6;
end
format short;