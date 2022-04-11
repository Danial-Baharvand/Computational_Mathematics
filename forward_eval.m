function y = forward_eval(X, T, x)
%FORWARD_EVAL Evaluate Newton's forward difference form of the
%interpolating polynomial
% y = FORWARD_EVAL(X, T, x) returns y = Pn(x), where Pn is the
% interpolating polynomial constructed using the abscissas X and
% forward difference table T.
[m,n] = size(T);
if m ~= n
error('T must be square.');
end
h=X(2)-X(1); % calculating the distance between poins
s=(x-X(1))/h; % calculating s
y = zeros(size(x)); % initialise sum
for k = 1:n % loop over sum index
    sk=1; % initialising sk  
    for i = 1:k-1 % loop over product index
        %P = P .* (x-X(i)); % multiply next factor
        sk=sk.*(s-i+1); % calculating the product of the numerator
    end
    sk=sk/factorial(k-1); % deviding by the denominator
    y = y + T(k,k) * sk; % add next term
end