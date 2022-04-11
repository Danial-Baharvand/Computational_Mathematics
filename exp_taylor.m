function e_to_x = exp_taylor(x, n)
%exp_taylor Approximate e^x by Taylor polynomial
% e_to_x = exp_taylor(x, n) returns 1 + x + x^2/2! + ... + x^n/n!
e_to_x=0;% initialise the approximation to 0
%implementing the Taylor polynomial
for i=0:n
    e_to_x=e_to_x+(x^i)/factorial(i);
end
end