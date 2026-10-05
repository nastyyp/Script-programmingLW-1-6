% 05-10-2026
% Variant 1
% Anastasiia Badurych

clear;
clc;
theta = linspace(0,2*pi, 100);
r = linespace (0, 1, 100);
[Theta, R]= meshgrid (theta, r);
x = R .* cos (Theta);
y = R .* sin (Theta);
z = 1 - 2*x.^2 - 3*y.^2;
figure;
surf(x, y, z);
shading interp;
colormap parula;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');
view(38, 38);
