Fs=1000;
n=10;
wn = [100 200]/500;
[b,a] = butter(n,wn);
stepz(b,a);
grid on
stepz(b,a);
grid on