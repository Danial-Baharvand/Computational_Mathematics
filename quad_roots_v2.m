function [root1, root2] = quad_roots_v2(a, b, c)
%Computes the two roots of the quadratic equation ax^2 + bx + c = 0 using
%the new formula to avoid catastrophic cancellation.
%[root1, root2] = quad_roots(a, b, c) returns two roots1 and root2 of the
%quadratic equation given the inputs a, b and c.

%calculating the first root 
root1 = (-(b-sqrt((b^2)-4*a*c)))/(2*a);
%calculating the second root
root2 = c/(a*root1);
end
