%Question:
%Design a 10th order BP Butterworth filter with a passband from 100 to 200 Hz and plot both impulse and frequency response

%Solution:
%First part- design an impulse response(unit impulse) design
%Second part- frequency response design

%First Part:


Fs = 1000;  % Let sampling frequency ,Fs = 1000 Hz
n = 10;     % Given order = 10

wn = [100 200]/500;     % wn = BP range, that is given for BP passband frequency from 100 to 200Hz
                        % 500 means , Fs/2 = 1000/2 = 500Hz

                       

[b,a] = butter(n,wn);   % b,a coefficients of z transform X(z)=b0+b1y1+b2y2/a0+a1x1+a2x2
                        % b = zeroes, a = poles
figure(1);              % for first figure
[y,t] = impz( b, a, 101); % impz = impluse response(time domain) 
                          % where, y = coefficients b, t = coefficients a
                          % let, 101 = no of sampling [0-100]
                          
plot(t,y,'k');            % plot in x-axis = t,  y-axis = y in time domain, k = black

grid on;

title("Impulse Response of y = x(t)");
xlabel("t = time");
ylabel("y = x(t)");

% second part
figure(2);

freqz( b, a, 501, Fs);      % for frequency response in f-domain
                            % 501 = no of frequency samples
                            % Fs = sampling frequency used for
                            % normalization


grid on;

title("Frequency Response of y = x(f) in db unit");
xlabel("f Hz = frequency");
ylabel("Amplitude(db) of y = x(f)");

% for finite visualization we need to convert infinite impulse response
% to step response for snapshot for better understanding

figure(3);
stepz(b,a); % stepz() for step response
grid on ;   % always we have to write grid on statement after write stepz() 



