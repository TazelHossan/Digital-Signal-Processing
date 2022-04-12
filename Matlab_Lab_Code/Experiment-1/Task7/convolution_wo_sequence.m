% Determine convolution of two sequences 
% A = {6, 2, 0, 5, 6} and B = {-4, -2, 1, 0, 7}
% Find the length of resultant sequence.

A = [6 2 0 5 6];
B = [-4 -2 1 0 7];
Y = conv(A,B);

stem(A);

hold on;

stem(B);

hold on;

stem(Y);

title('Convolution Of two signal');

xlabel('n');

ylabel('Y = A*B');

legend('Signal A', 'signal B', 'Convolution of A*B');

grid on;
