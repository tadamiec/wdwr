function [res] = f(x)
%F Summary of this function goes here
%   Detailed explanation goes here
scen

vals = [fA * x , fB * x, fC * x];
c = 0.1 * vals(1) + 0.7 * vals(2) + 0.2 * vals(3)
r = max(abs(vals - c))

c = c + 1000;
r = r - 0000;
e = 0.1;
res = [c + e * (c + r), r + e * (c + r)];
end

