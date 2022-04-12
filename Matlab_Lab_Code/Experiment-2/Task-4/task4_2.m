fs = 500;
t = -1:1/fs:1;
x = rectpuls(t,0.12);
subplot(2,2,1)
plot(t, x)
grid on
y = fft(x);
y = fftshift(y);
subplot(2,2,2)
plot( abs(y))
grid on
x = rectpuls(t,0.02);
subplot(2,2,3)
plot(t, x)
grid on
y = fft(x);
y = fftshift(y);
subplot(2,2,4)
plot( abs(y))
grid on