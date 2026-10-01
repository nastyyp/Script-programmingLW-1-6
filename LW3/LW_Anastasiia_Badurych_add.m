% Anastasiia Badurych
% Variant 1

clear;
clc;

A_signal = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;

t = 0:0.001:1;
s = A_signal * sin(2*pi*f*t);
n = sigma * randn(size(t));
noisySignal = s + n;

filteredSignal = noisySignal;
filteredSignal(abs(filteredSignal) < U2) = 0;

selected = noisySignal > U1;
maximumPoints = noisySignal == max(noisySignal);
minimumPoints = noisySignal == min(noisySignal);

values = [noisySignal filteredSignal U1 U2 0];
padding = 0.05 * (max(values) - min(values));
yLimits = [min(values)-padding max(values)+padding];

figure;

subplot(1, 2, 1);
plot(t, noisySignal, 'b-', 'LineWidth', 1.25);
hold on;
plot(t, filteredSignal, 'm--', 'LineWidth', 1.25);
yline(U1, 'r-', 'LineWidth', 1.25);
yline(U2, 'k-', 'LineWidth', 1.25);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Original and filtered signals', 'Color', 'b', 'FontSize', 14);
legend('Original signal', 'Filtered signal', 'U_1', 'U_2', ...
       'Location', 'best');
grid on;
axis([min(t) max(t) yLimits]);
hold off;

subplot(1, 2, 2);
stem(t(selected), noisySignal(selected), 'b', 'LineWidth', 1.25);
hold on;
plot(t(maximumPoints), noisySignal(maximumPoints), ...
     'go', 'MarkerSize', 8, 'LineWidth', 1.25);
plot(t(minimumPoints), noisySignal(minimumPoints), ...
     'rv', 'MarkerSize', 8, 'LineWidth', 1.25);
yline(U1, 'r-', 'LineWidth', 1.25);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Samples above U_1 and extrema', 'Color', 'b', 'FontSize', 14);
legend('Samples above U_1', 'Maximum voltage', 'Minimum voltage', ...
       'U_1', 'Location', 'best');
grid on;
axis([min(t) max(t) yLimits]);
hold off;
