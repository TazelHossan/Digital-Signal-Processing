%Generate a unit sample sequence for n = [-6, 6].

n = [-6:6];

y = [0 0 0 0 0 0 1 0 0 0 0 0 0];

stem(n, y)

title('Unit sample signal')

xlabel('n')

ylabel('y = x(n)')

grid on