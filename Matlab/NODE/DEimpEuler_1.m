function [y1,y2] = DEimpEuler_1( h,a,b,y0,y10)
format long;
N = (b-a)/h;
y1 = zeros(N+1,1);
y2 = zeros(N+1,1);
x = a:h:b;
y1(1) = y0;
y2(1) = y10;
%var = findsym(f);
ffx=1;
fx=0;
ffx1=1;
fx1=0;
for i=1:N
    fx = y1(i)+y2(i).*h;
   while(abs(ffx-fx)>1e-6)
      ffx = y1(i)+h.*(fx+y2(i));
        bb = ffx;
        ffx = fx;
        fx = bb;  
   end
   y1(i)=ffx;
   
   
       fx1 = y1(i)+(64*y1(i)+16*cos(8*x(i))).*h;
   while(abs(ffx1-fx1)>1e-6)
      ffx1 = y2(i)+h.*(fx1+(64*y1(i)+16*cos(8*x(i))));
        bb = ffx1;
        ffx1 = fx1;
        fx1 = bb;  
   end
   y2(i)=ffx1;
 
end
format short;


%y1(i+1)=y1(i)+y2(i).*h;
%    y2(i+1)=y2(i)+(64*y1(i)+16*cos(8*x(i)));
    
    
    
    