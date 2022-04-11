function i = find_first(array, value)
% find_first Find first index of a value in an array.
% i = find_first(array, value) returns the index i into the array where the
% first occurrence of value is found. If value is not in array, a warning
% is raised and the index NaN is returned.

n = length(array);
i = 1; % initialise our counter
while array(i)~=value && i<n
    i = i + 1;
end
%Check if value was not found
if array(i)~=value
    warning('value was not found.');
    i = NaN;
end
