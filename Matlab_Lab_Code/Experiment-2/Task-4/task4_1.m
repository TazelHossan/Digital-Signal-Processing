x=[1 0 0 1];
y=fft(x);
subplot(2,1,1)
stem(abs(y), 'k')
xlabel('m')
ylabel('X(m)')
title('Absolute value of DFT sequence')
subplot(2,1,2)
stem(angle(y), 'k')
xlabel('m')
ylabel('Angle(X(m))')
title('Angle of DFT sequence')