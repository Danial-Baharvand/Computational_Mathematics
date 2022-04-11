function [t, w, h] = rk4(f, a, b, alpha, n)
%RK4 Fourth Order Runge-Kutta method
% [t, w, h] = rk4(f, a, b, alpha, n) performs the fourth order Runge-Kutta
% method for solving the IVP y' = f(t,y) with initial condition y(a) = alpha
% taking n steps from t = a to t = b.
%% calculate h
h = (b-a)/n;
%% create t array
t = a:h:b;
%% initialise w array
w = zeros(size(t));
w(1) = alpha;

%% perform iterations
for j = 1:n
k1 = h*f(t(j), w(j));
k2 = h*f(t(j) + (h/2), w(j) + (k1/2));
k3 = h*f(t(j) + (h/2), w(j) + (k2/2));
k4 = h*f(t(j) + h, w(j) + k3);
w(j+1) = w(j) + 1/6 * (k1 + (2*k2)+(2*k3)+k4);
end
