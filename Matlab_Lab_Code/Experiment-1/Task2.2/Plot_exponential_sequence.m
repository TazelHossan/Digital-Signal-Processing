%Plot of the exponential sequence, y(n) = ar^n for a = 2, r = 0.8 and 1.2.

a = 2;           % given
r = 0.8;         % given

n = 0 : 1 : 20;  % assume 0 to 20 [0 20] values increasing by 1

y = a*r.^n;      % notice  r.^n 

subplot(2, 1, 1);

stem(n , y);
title('y=ar^n , where r < 1 ');

xlabel('x = n ');

ylabel('y = x(n)');
grid on;

r = 1.2 ;
y = a*r.^n;

subplot(2,1, 2);
stem(n, y);
title('y=ar^n , where r < 1 ');

xlabel('x = n');

ylabel('y(n)');

grid on;
