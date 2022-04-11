function [root1, root2] = quad_roots(a, b, c)
%Computes the two roots of the quadratic equation ax^2 + bx + c = 0 using
%the standard formula.
%[root1, root2] = quad_roots(a, b, c) returns two roots1 and root2 of the
%quadratic equation given the inputs a, b and c.

%calculating the first root usung the standard formula
root1 = (-b+sqrt(b^2-4*a*c))/(2*a); 
%calculating the second root usung the standard formula
root2 = (-b-sqrt(b^2-4*a*c))/(2*a);
end
