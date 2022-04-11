function fdash = second_order_central(f, x0, h)
%second_order_central Second order central difference approximation to f'.
% fdash = second_order_central(f, x0, h) returns (f(x0+h)-f(x0-h))./(2*h)
% where f is a function handle.
if ~isa(f, 'function_handle')
error('Your first argument was not a function handle')
end
fdash = (f(x0+h)-f(x0-h))./(2*h);
end