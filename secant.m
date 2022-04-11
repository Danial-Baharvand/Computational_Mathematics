function [x,i] = secant(f, x0, x1, tol, maxiters)
%SECANT Secant method
% [x,i] = secant(f, x0, x1, tol, maxiters) performs the secant
% method with f(x), starting at x_0 = x0 and x_1 = x1, and continuing
% until either |x_i+1 - x_i| <= tol, or maxiters iterations have
% been taken. The number of iterations, i, is also returned.
% An error is raised if the first input is not a function handle.
% A warning is raised if the maximum number of iterations is reached
% without achieving the tolerance.
if ~isa(f, 'function_handle')
    error('Your first input was not a function handle')
end
i = 0; % initialise our counter
x_0 = x0; % x_n-1
x_1 = x1; % x_n
x = inf; % x_n+1 which we don't have a value for yet
while abs(x - x_0) > tol && i < maxiters
    x = x_1-f(x_1)*((x_1-x_0)/(f(x_1)-f(x_0))); % compute the new x
    % reassign the values for the next iteration
    x_0=x_1;
    x_1=x;
    i = i + 1; % increase our counter by one
end
if abs(x - x_0) > tol
    warning('Maximum number of iterations reached without achieving tolerance.')
end
