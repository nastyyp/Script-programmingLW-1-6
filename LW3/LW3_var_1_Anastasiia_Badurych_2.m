% Date: 21-09-2026
% Variant: 1
% Anastasiia Badurych

clc;
clear;
close all;

names = {'Anastasiia', 'Anna', 'Mark', 'Sofia', 'Daniel', 'Julia'};

marks = [8 9 7 10;
         6 8 9 7;
         9 10 8 9;
         7 6 8 9;
         10 9 10 8;
         8 7 9 10];

averageMarks = mean(marks, 2);

figure;

subplot(2, 1, 1);
bar(marks');
xlabel('Laboratory assignment');
ylabel('Mark');
title('Students marks for four laboratory assignments');
legend(names, 'Location', 'eastoutside');
xticks(1:4);
axis([0.5 4.5 0 10.5]);
grid on;

subplot(2, 1, 2);
stem(1:6, averageMarks, 'filled', 'LineWidth', 1.25);
xlabel('Student');
ylabel('Average mark');
title('Average mark of each student');
xticks(1:6);
xticklabels(names);
axis([0.5 6.5 0 10.5]);
grid on;
