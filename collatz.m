function collatz(n)
% COLLATZ Applies the collatz algorithm for a given starting value.
% collatz(n) performs the collatz algorithm starting with a positive, integer n.
% This function returns no outputs but displays the integer value at each
% application of the collatz algorithm.
disp (n); % display the starting value
while n~=1 % contenue until result is equal to 1
    if mod(n,2)==0 % if n is even
        n=n/2; % devide by 2
    else % if n is odd
        n=(n*3)+1; % multiply n by 3 and add 1
    end
disp (n); % display n at each iteration to the comand window
end