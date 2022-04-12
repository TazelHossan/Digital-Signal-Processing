%Generate a unit step sequence for n = [-6, 6]

n = [-6:6];

y = [0 0 0 0 0 0 1 1 1 1 1 1 1 ];

stem(n, y)

title('unit step signal')

xlabel('n')

ylabel('y = x(n)')

grid on 