%Plot the sequence {-2, 5, 5, 3, -1, 6, -3}.
%where x(n)= 3, when n = 0
y = [-2 5 5 3 -1 6 -3];
x = (-3:3);

stem(x,y);
title("Plot the sequence \{5, -2, 0, 3, 4, 6\}.where x(n)= 3, when n = 0.");
xlabel('n');

ylabel('y = x(n)');

grid on ;