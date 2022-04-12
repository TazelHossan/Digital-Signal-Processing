N=50;%number of samples
m=0:1:N-1;
d=rand(N,1)-0.5;%noise with mean 0 and lies between -0.5 to 0.5

s=2*m.*(0.9.^m);%original Sequence

x=s+d'; %noisy sequence

subplot(2,2,1)
stem(m,s)
title('Original Message')

subplot(2,2,2)
stem(m,d)
title('Random Noise')

subplot(2,2,3)
stem(m, x)
title('Noisy Sequence')

subplot(2,2,4)
plot(m, d, 'r-', m, s, 'b--', m, x, 'm--')
legend('noise','original message', 'noisy message')

M=input('Value of M=');% Value of M from key board
b=ones(M, 1)/M;
y=filter(b,1,x);
plot(m,s,'r-',m,y,'b--')
legend('Original Sequence', 'Moving Average Filtered Signal')
grid on
xlabel('n')
ylabel('(y(n)')