clc
clf
clear

syms x theta sinfunc

k = 1.1;

L1 = 1;
L2 = k * L1;
L3 = 1;

x = L1*cos(theta) + L2*cos(asin(L1/L2 * sin(theta))) - L2;

sinfunc = sin(theta + pi/2);

t = 0:0.05:2*pi;
hold on
fplot(sinfunc,[0 2*pi])

for i = 1:7
    L2 = i * L1;
    x = L1*cos(theta) + L2*cos(asin(L1/L2 * sin(theta))) - L2;
    fplot(x,[0 2*pi]);
end


