function y = DEimpEuler(f, h,a,b,y0)
format long;
N = (b-a) / h;
y = zeros(N+1,1);
y(1) = y0;
x = a:h:b;
%var = findsym(f);
ffx = 1;
fx = 0;
for i=2:N+1
    fx = y(i-1) + f(x(i-1),y(i-1));
   while(abs(ffx-fx)>1e-6)
        %fx = f(x(i-1),y(i-1))+y(i-1);
      ffx = y(i-1) + h.*f(x(i),fx);
   %while(abs(ffx-fx)>1e-6)
        bb = ffx;
        ffx = fx;
        fx = bb;  
   end
   y(i) = ffx;
   %y(i) = NewtonRoot(gx,-10,10,eps);
end
format short;
