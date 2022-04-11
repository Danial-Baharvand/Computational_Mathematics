function plot_function_and_taylor(f, a, b, x0, n)
%plot_function_and_taylor Plot a function and its Taylor polynomials
% plot_function_and_taylor(f, a, b, x0, n) plots the function f on the
% interval [a,b], along with its Taylor polynomial approximations
% centred on x0 up to degree n.
figure%create an empty figure
x = linspace(a, b, 1000);%assign the interval numbers and points within it
plot(x, f(x));%plot the function f
%assigning the appropriate labels for the x and y axes
xlabel('x-axis');
ylabel('y-axis');
hold on%keep the figure
%plot the taylor polynomials of degree 0 to n
for i=0:n
    P = taylor(f, x0, i);
    plot(x, polyval(P, x-x0));
end
end