function x=qinjiushaoNewton(a,x1)
%a为多项式系数，由高阶到低阶
X=x1;
n=length(a);
%b=zeros(1,n+1);
%c=zeros(1,n);
H=x1+1;
tol=10.*(-6);
%step=0;
%for pp=1:n
 %   d(pp)=a(n-pp+1);
%end
%for pp=1:n
 %   a(pp)=d(pp);
%end
for i=1:n
   % X=H;
    b=0;
    c=0;
  for i=1:n-1
    b=a(i)+X.*b;
    c=b+X.*c;
  end
    b=a(n)+X.*b;
    k=b/c;
    X=X-k;
 %   step=step+1;
end
x=X;
%step=step;
end