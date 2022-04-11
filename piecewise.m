function f = piecewise(x)
% This function implements the piecewise function specified in quiz 5 
% using if statements. It take a single scalar input x and returns a single
% scalar output f 

if x<0
    f= (-x^3)-(2*(x^2))+(3*x);
elseif 0 <= x &&  x<= 8
    f= (12/pi)*sin(pi*x/4);
elseif x>8
    f=((600*exp(x-8))/(7*(14+6*exp(x-8))))-(30/7);
end
