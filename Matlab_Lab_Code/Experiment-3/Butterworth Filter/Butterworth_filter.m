Fs = 1000;
n =10
wn = [100 200]/500
[b,a] = butter(n,wn);
figure(1);
[y,t]=impz(b,a,101);
plot(t,y);
title('Impulse Response');
grid on;

figure(2);
freqz(b,a,512,Fs);
