load handel %original music signal
u=y(1:20000);
sound(u);
d=0.5*rand(length(u),1)-0.5;%noise with mean 0 and lies between -0.25 to 0.25
x=u+d; %noisy sequence
sound(x)
M=5;% Value of M
b=ones(M,1)/M;
z=2*filter(b,1,x);
sound(z)
subplot(3,1,1)
plot(u)
subplot(3,1,2)
plot(x)
subplot(3,1,3)
plot(z)