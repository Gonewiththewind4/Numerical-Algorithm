function [u,step]=Secant(f,x1)
g=diff(f);
%format long;
syms x;
Tol=1e-6;
if x1==0
    x1=0.0001;
end
X=x1;
H1=X/2;
H2=2;
step=0;
while abs(H2-H1)>Tol
    X2=H2;
    X1=H1;
    k1=subs(f,x,X1);
    k2=subs(f,x,X2);
    g=(k2-k1)/(X2-X1);
    k=f/g;
    k=subs(k,x,X2);
    H3=X2-k;
    H1=H2;
    H2=H3;
    step=step+1;
end
u = H2; 
step=step;
end