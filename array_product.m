function P = array_product(v)
%array_product Product of elements in an array
% P = array_product(v) returns v(1) * v(2) * ... * v(n)
% where n is length(v).
P=1;% initialise product to 1
for i=1:length(v) % for each element in the array
    P=P*v(i); %multiply the elements
end
end
