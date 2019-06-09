function [u,step]=SimpleNewton(f,x1)
g=diff(f);
%format long;
syms x;
Tol=1e-6;
if x1 == 0
    x1=0.001;
end
X=x1;
H=X/2;
gg=subs(g,x,x1);
gg=eval(gg);
step=0;
while abs(H-X)>Tol
    X=H;
    k=f/gg;
    k=subs(k,x,X);
    %k=eval(k);
    H=X-k;
    step=step+1;
end
H;
u = H;
step=step;
end