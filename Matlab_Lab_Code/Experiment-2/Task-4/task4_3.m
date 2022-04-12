x=zeros(32);
x(12:17)=ones(6,1);
subplot(2,2,1)
title('2D rectangular pulse')
mesh(x)
x=fft(x);
x=fftshift(x);%Dc avlue is at the corner of the array
%let us move it at the middle
subplot(2,2,2)
mesh(abs(x))
title('2D sinc in frequency domain')
x=zeros(32);
x(12:17,12:17)=ones(6);
subplot(2,2,3)
title('3D rectangular pulse')
mesh(x)
x=fft2(x);
x=fftshift(x);%Dc avlue is at the corner of the array
%let us move it at the middle
subplot(2,2,4)
mesh(abs(x))
title('3D sinc in frequency domain')