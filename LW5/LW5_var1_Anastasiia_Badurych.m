
clc;
clear;
close all;

% Task 1(a) - Data structure

signal.x = 0:0.01:1;
signal.y = sin(2*pi*signal.x);
signal.title = 'f(x) = sin(2*pi*x)';

disp(signal);


% Task 1(b) - Plot the signal

plot(signal.x, signal.y);
title(signal.title);
xlabel('x');
ylabel('f(x)');
grid on;


%% Task 2 - Operation Flow Control

while true
    a = input('Enter a: ');
    b = input('Enter b: ');
    c = input('Enter c: ');
    x = input('Enter x: ');

    if a == 0 && b == 0 && c == 1 && x == 1
        break;
    end

    f = a*x^2 + b*x + c;
    disp(['Result: ', num2str(f)]);
   
end

%% Complementary Task 1

A = [];
B = [];

while true

    a = randi(10);
    b = randi(10);

    A(end+1) = a;
    B(end+1) = b;

    if a == b
        break;
    end

end

disp('Array A:');
disp(A);

disp('Array B:');
disp(B);

figure;
plot(A, '-o');
hold on;
plot(B, '-x');
hold off;

legend('Array A', 'Array B');
xlabel('Iteration');
ylabel('Random number');
title('Random Numbers');
grid on;
