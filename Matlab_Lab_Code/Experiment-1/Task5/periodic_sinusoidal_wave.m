% For discrete time sequence, a sinusoidal wave is periodic 
% if its frequency is a rational number like,
% f = M / K. Period of the wave is the denominator i.e. K.

% periodic sinusoidal wave

x = [0 : 1 : 50]; % assume 0 to 50 descrete values increasing by 1 

N = 20;           % assume cycle completed when x =  20 , 
                 % after 20, next cycle occurs, so period = 20 
                 % so N = period
f = 1/N;

y = sin(2 * pi * f * x); % sine wave = sin(2.pi.f.x)

subplot(2,1,1);

stem(x, y);

title(' sine wave = sin(2.pi.f.x)');

xlabel('x');

ylabel('y = x(n)');

grid on;

% Non-periodic sinusoidal wave

N = sqrt(20);  % root(N) = irrational so it produces non periodic

f= 1/N;

y = sin(2*pi*f*x);

subplot(2,1,2);

stem(x,y);

title('Non Periodic Sine wave');

xlabel('x');

ylabel('y = x(n)');

grid on;


