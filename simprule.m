function I = simprule(f, a, b, n)
%SIMPRULE Simpson's rule integration.
% I = SIMPRULE(F, A, B, N) returns Simpson's rule approximation for
% the integral of f(x) from x=A to x=B, using N subintervals,
% where F is a function handle.
if ~isa(f, 'function_handle')
error('Your first argument was not a function handle')
end
h = (b-a) / n;
x = a:h:b; % an array of length n+1
S1 = 0; % Will record the sum of odd x values in the middle
S2 = 0; % Will record the sum of even x vlaues in the middle
for j = 1:n/2
S1 = S1 + 4*(f(x((2*j))));
end
for j = 1:(n/2)-1
S2 = S2 + 2*(f(x((2*j)+1)));
end
I = h/3 * (f(x(1)) + S1+S2 + f(x(end)));