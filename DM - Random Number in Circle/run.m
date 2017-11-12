clc;
clear;

n = 10000;

x = rand(n, 1)*2-1;
r = rand(n, 1)*2-1;
y = ((1 - x.^2).^.5) .* r;

plot(x, y, 'x');