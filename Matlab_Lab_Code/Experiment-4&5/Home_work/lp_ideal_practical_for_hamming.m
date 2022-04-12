% Low Pass Filter (LP)
% First Part: Calculate Ideal Impulse Response hd
N = 25; % Length Of The Filter
n = -N:1:N; % Range Of The Filter
fc = 0.03125; % Cutoff Frequency Calculated by fp + (delf/Fs)/2
hd = sinc(2*fc*n); % hd = Ideal Impulse Response
subplot(2,1,1);
stem(n,hd,'r');        % stem for descrete ideal impulse sequence
xlabel('n');
ylabel('h(d)');
title('Impulse response of the ideal LP FIR filter');
grid on ;

wn = hamming(2*N+1); % For Hamming Window
subplot(2,1,2);
% Second Part: Calculate Practical Impulse Response h(n)
h = hd'.*wn;        % Vector Multiplication
stem(n,h,'b');
xlabel('n');
ylabel('h(d)');
title('Impulse response of the Practical LP FIR filter');
grid on ;
