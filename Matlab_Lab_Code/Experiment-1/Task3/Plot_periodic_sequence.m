% Plot the periodic sequence, 
% x[n] = {….5,4,3,2,1, 5,4,3,2,1, 5,4,3,2,1, 5,4,3,2,1……..} 
% for n = -10 to 9

n = [-10:9 ];

x=[5,4,3,2,1];

p=4;

xy=x' * ones(1,p); % xy indicates, p=4 column of vectors of [ 5, 4 , 3, 2 , 1]

xy =(xy(:)); %a long column vector will be converted
stem(n,xy);
title("Periodic sequence");
xlabel('n');

ylabel('x(n)');

grid on;