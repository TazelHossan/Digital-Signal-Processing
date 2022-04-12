% Generate 100 random numbers between 0 and 1.
% Add them with an exponential sequence as a random noise.
% Plot both noisy and noiseless signals.

a = 0.5;  % assume 
r = 0.96; % assume

N = 100; % as we want to generate 100 random numbers

for n = 1:N
    e(n) = n;
    y(n) = a*r.^n;
    Y(n) = y(n) + 0.04*rand(); % noise 0.04 adding with random number
    
end

stem(e,y)
hold on

stem(e,Y)

hold on

title('Original and Noisy Signal')

xlabel('n')

ylabel('Amplitude')

legend('Original Signal','Noisy Signal')

grid on
    
