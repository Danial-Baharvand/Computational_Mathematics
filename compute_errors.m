function [abserr, relerr] = compute_errors(x, xtilde)
%compute_errors Compute absolute and relative errors
% [abserr, relerr] = compute_errors(x, xtilde) returns the absolute
% and relative errors in the approximation of x by xtilde.
abserr = abs(x - xtilde);
relerr = abserr / abs(x);
end