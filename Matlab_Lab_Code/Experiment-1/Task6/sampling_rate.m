a=0.2;
r=0.8;
N=10;
for n=1:N,
s(n)=n;
y(n)=a*r.^n;
end
M=N/2;
for m=1:M,
m=2*m;
p(m)=m;
z(m)= y(m);
end
stem(s,y,'ks')%Original sequence y(n)
hold on
stem(p,z,'k*')%under sampled sequence y(2n)
xlabel('n')
ylabel('y(n) and y(2n)')
grid on
legend('Original sequence', 'Under sampled')
