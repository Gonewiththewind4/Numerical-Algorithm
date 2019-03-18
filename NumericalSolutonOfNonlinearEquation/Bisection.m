function x = Bisection(f,a,b,max,eps)
if sign(f(a)) == sign(f(b))
    disp('There is no real solution in this interva;')
    x = [];
    return
end
step = 0;
c = b;
while((f(c)~=0) && (step<max) && (abs(b-a)>=eps))
    
    c = a + (b - a) / 2;
    
    if(f(c) == 0)
        x = c;
        break;
    else
        if (sign(f(a)) == sign(f(c)))
            a = c;
        else
            b = c;
        end
    end
    
step = step + 1;

end

x = c;

end