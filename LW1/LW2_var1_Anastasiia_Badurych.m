% Name: Anastasiia
% Surname: Badurych
% Group: EDIfu 25/2
% Date: 21-09-2026
% LW2
clear;
clc;
% TASK 1 VECTORS
% a) Create a row vector from 1 to 34 with a step of 2
a = 1:2:34;

% Display the vector
disp(a);
%Task 1(b)
b = exp(a);
disp(b);
%Task 1(c) 
% to divide every element of vector a by the corresponding element of vector b
c = a ./ b;
disp(c);
% d) Display the answer as a column
disp(c');

% Task 2: Matrices

% a) Create matrix A
A = [pi/2, 3i;
     log(2), 2*pi];
disp(A);
%TASK B
B = [exp(A(1,1)), exp(A(1,2))];
disp(B);
C = [A; B];
disp(C);
%TASK C
columnSums = sum(C);
disp(columnSums);
%Task 3
% Given data
A_signal = 5;       % Amplitude in volts
f = 5;              % Frequency in Hz
sigma = 1.5;        % Noise level in volts
U1 = 3;             % Selection threshold
U2 = 2;             % Filtering threshold

% Time from 0 to 1 second with increment 0.001
t = 0:0.001:1;

% Clean sine signal
s = A_signal * sin(2*pi*f*t);

% Random noise with the same size as t
n = sigma * randn(size(t));

% Signal affected by noise
noisySignal = s + n;
% a) Select samples greater than U1
selectedSamples = noisySignal(noisySignal > U1);

% b) Replace values with absolute value lower than U2 with zero
filteredSignal = noisySignal;
filteredSignal(abs(filteredSignal) < U2) = 0;

% c) Number of samples in the unfiltered signal
numberUnfiltered = numel(noisySignal);

% d) Number of samples selected in part a
numberSelected = numel(selectedSamples);

% e) Minimum and maximum filtered voltage
minimumVoltage = min(filteredSignal);
maximumVoltage = max(filteredSignal);

% Display the answers
disp('Number of samples in the unfiltered signal:');
disp(numberUnfiltered);

disp('Number of samples greater than U1:');
disp(numberSelected);

disp('Minimum voltage of the filtered signal:');
disp(minimumVoltage);

disp('Maximum voltage of the filtered signal:');
disp(maximumVoltage);
% Complementary Task P1

% Ask the user to enter a 12-element row vector
A = input('Enter a row vector containing 12 elements: ');

% Check whether the vector contains 12 elements
if numel(A) ~= 12
    disp('Error: the vector must contain exactly 12 elements.');
else
    % Matrix indexing: select elements 10 through the last element
    lastPart = A(10:end);

    % Create a logical mask
    mask = true(size(A));
    mask(10:end) = false;

    % Logical indexing: select elements 1 through 9
    firstPart = A(mask);

    % Join the two parts
    B = [lastPart firstPart];

    % Display the answer
    disp('vector B is:');
    disp(B);
end
