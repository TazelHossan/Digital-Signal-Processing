beta = 5.2; % Required for Kaiser Window
N = 20;     % Length of the filter
n = 1:1:20; % Range of the filter
y = hamming(N); % For Hamming window
y1= hann(N);    % For Hanning window
y2 = kaiser(N,beta); % For Kaiser window
plot(n, y, 'k^-',n,y1,'rd:',n,y2,'b*:'); % Plot 3 windows
                                         % k = For Black color
                                         % r = For Red color
                                         % b = For blue color
                                         % ^ = For Pyramid Shape
                                         % - = Graph Represents as '--'
                                         % d = For Diamond
                                         % : = Graph Represents as '..'
                                         % * = Graph Represents as '**'
xlabel('n');
ylabel('h(n)');
title('Diffrent Types Of FIR WIndow Functions')
legend('hamming','hanning','kaiser');    % Marking 3 types of figures
grid on ;