n = -4:5;
x=[0 -1 2 5 7 -4 3 -5 6 -2];
stem(n,x,'r*'); 
hold on;
k=2;
m=n+k; 
y=x;
stem(m,y,'bd'); 
hold on;
r=min(min(n),min(m)):max(max(n),max(m)); %duration of z 
z1=zeros(1,length(r));
z2=z1;  %initialization 
z1(find((r>=min(n))&(r<=max(n))==1))=x; %x with duration of z 
z2(find((r>=min(m))&(r<=max(m))==1))=y; %y with duration of z

z=z1+z2; 
stem(r,z,'k>'); 
grid on; 
xlabel('n');
 
ylabel('x(n),y(n),z(n)') 
legend('x(n)','y(n)=x(n-2)', 'z(n)=x(n)+y(n)')
