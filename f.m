function [res] = f(x)
%F Summary of this function goes here
%   Detailed explanation goes here
scen
%x = x';
vals = [fA * x , fB * x, fC * x];
c = 0.1 * vals(1) + 0.7 * vals(2) + 0.2 * vals(3);
r = max(abs(vals - c));

global cAsp;
global rAsp;
global e;
c = c - cAsp;
r = r - rAsp;
e = 0.1;
res = [c + e * (c + r), r + e * (c + r)];
%res = -min(res);
end

