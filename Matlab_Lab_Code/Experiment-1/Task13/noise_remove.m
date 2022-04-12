load handel %original signal
u=y(1:16000);
[num,den]=ellip(4,3,40,0.75,'high');
noise=filter(num,den,randn(length(u),1));
x=u+noise;
x=x/max(max(x));
M=5;% 5 sample will be averaged
b=ones(M,1)/M;
z=2*filter(b,1,x);
figure(1)
subplot(1,3,1)
specgram(u,[],Fs)
title('Original wave')
subplot(1,3,2)
specgram(x,[],Fs)
title('Noisy wave')
subplot(1,3,3)
specgram(z,[],Fs)
title('Filtered wave')
figure(2)
subplot(3,1,1)
plot(u)
title('Original wave')
subplot(3,1,2)
plot(x)
title('Noisy wave')
subplot(3,1,3)
plot(z)
title('Filtered wave')