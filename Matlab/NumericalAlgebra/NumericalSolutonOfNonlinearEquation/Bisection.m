function x = Bisection(a,b,max,eps)

if sign(f(a)) == sign(f(b))
    disp('There is no real solution in this interva;')
    x = [];
    return
end
step = 0;
c = b;
while((f(c)~=0) && (step<max) && (abs(b-a)>=eps))
    
    c = a + (b - a) / 2;
% Forsythe , Malcolm , and Moler [1977 , p. 162 ] present an example 
% in which the midpoint computed by (a + b)/2 move s outside of the 
% interval [a, b] on a machine with limited precision
    
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
% using sign(u) != sign(w) rather than wv < 0,
% since the latter requires an unnecessary multiplication 
% and could cause an underflow or overflow