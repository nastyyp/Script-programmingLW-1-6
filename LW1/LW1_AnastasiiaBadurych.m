% Name: Anastasiia
% Surname: Badurych
% Group: EDIfu 25/2
% Date: 14-09-2026
%
%Paprastas scriptas
%

x = 1:32;
y = x.^2;

plot (x,y, 'o-r', x, y/3, 'xb')
title('two functions')
xlabel ('x-as')
ylabel ('F_1 [--]   |    F_2 [--]')
%% Complementary task

% 1. Last digit of student ID
N = 0;
% 2. Create vector
v = N+1 : 0.5 : N+4;
% 3. Create 3x3 matrix A
A = [N   N+1 N+2;
     N+3 N+4 N+5;
     N+6 N+7 N+8];
% 4a. Select bottom-middle element
a = A(3,2);
% 4b. Select rows 2-3 and columns 1-2
b = A(2:3, 1:2);
% 4c. Select four corner elements
c = A([1 3], [1 3]);
% 5. Concatenate matrix A with the vector
B = [A; v(1:3)];