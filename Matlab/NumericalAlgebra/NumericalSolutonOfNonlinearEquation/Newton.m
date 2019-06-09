function [x,step]=Newton(f,x1)
g=diff(f);
%format long;
%syms x;
Tol=1e-6;
if (x1==0)
    x1=0.001;
end
X=x1;
H=X/2;
step=0;
while abs(H-X)>Tol
    X=H;
    k=f/g;
    k=subs(k,findsym(k),X);
    k=eval(k);
    H=X-k;
    step=step+1;
end
H;
x= H;
step=step;
end