% Date: 21-09-2026
% Variant: 1
% Anastasiia Badurych

clc;
clear;
close all;

x = linspace(-pi, pi, 50);

f1 = sin(x);
f2 = x.^2 + 9;
f3 = x.^3 - 2*x.^2 - 9;

figure;
plot(x, f1, 'b-o', 'LineWidth', 1.25);
xlabel('x');
ylabel('f_1(x)');
title('f_1(x) = sin(x)');
legend('sin(x)', 'Location', 'best');
grid on;
axis([-pi pi -1.2 1.2]);

figure;
plot(x, f2, 'r--s', x, f3, 'g-.^', 'LineWidth', 1.25);
xlabel('x');
ylabel('Function value');
title('f_2(x) and f_3(x)');
legend('x^2 + 9', 'x^3 - 2x^2 - 9', 'Location', 'best');
grid on;
axis([-pi pi min([f2 f3])-5 max([f2 f3])+5]);
