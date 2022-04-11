function max = maximum_v2(a,b)
% takes two numbers a and b as inputs, and returns the larger of
% the two. If one or both of the arguments are NaN, the function will print
% "please enter a valid number"
if isnan(a) || isnan(b) % checking for NaN values
    disp('please enter a valid number')
elseif a>b
    max=a;
else
    max=b;
end