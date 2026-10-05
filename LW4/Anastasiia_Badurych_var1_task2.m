clear;
clc;
close all;

x = linspace(-1, 1, 100);
y = linspace(-1, 1, 100);

[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure;

subplot(1,3,1);
surf(X, Y, Z);
shading faceted;
xlabel('x');
ylabel('y');
zlabel('z');
title('Shading Faceted');
grid on;

subplot(1,3,2);
surf(X, Y, Z);
shading flat;
xlabel('x');
ylabel('y');
zlabel('z');
title('Shading Flat');
grid on;

subplot(1,3,3);
surf(X, Y, Z);
shading interp;
xlabel('x');
ylabel('y');
zlabel('z');
title('Shading Interp');
grid on;
