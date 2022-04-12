% First Part: Chebyshev Type-I

Fs=1000;        % Let sampling frequency ,Fs = 1000 Hz
n=10;           % Given order = 10
wn = [100 200]/500;     % wn = BP range, that is given for BP passband frequency from 100 to 200Hz
                        % 500 means , Fs/2 = 1000/2 = 500Hz
Rp=25;                  % Given 25dB ripple in passband

[b,a]=cheby1(n,Rp,wn);  % cheby1() = For chebyshev filter type-I (by default for passband) 
                        % b,a coefficients of z transform X(z)=b0+b1y1+b2y2/a0+a1x1+a2x2
                        % b = zeroes, a = poles
[y,t]=impz(b,a,101);    % impz = impluse response(in time domain) 
                        % where, y = coefficients b, t = coefficients a
                        % let, 101 = no of sampling [0-100]
figure(1);              % for first figure
plot(t,y,'k');          % plot in x-axis = t,  y-axis = y in time domain, k = black
grid on;
title("Impulse Response of y = x(t)");
xlabel("t = time");
ylabel("y = x(t)");

figure(2);              % for figure-2
freqz(b,a,501,Fs);      % for frequency response in f-domain
                        % 501 = no of frequency samples
                        % Fs = sampling frequency used for
                        % normalization
title("Frequency Response of y = x(f) in db unit");
xlabel("f Hz = frequency");
ylabel("Amplitude(db) of y = x(f)");

% Second Part: Chebyshev Type-II
Fs=1000;        % Let sampling frequency ,Fs = 1000 Hz
n=10;           % Given order = 10
wn = [100 200]/500;     % wn = BP range, that is given for BP passband frequency from 100 to 200Hz
                        % 500 means , Fs/2 = 1000/2 = 500Hz
Rp=25;                  % Given 25dB ripple in passband
[b,a]=cheby1(n,Rp,wn,"Stop");% cheby1() = For chebyshev filter type-I (for stopband) 
                             % b,a coefficients of z transform X(z)=b0+b1y1+b2y2/a0+a1x1+a2x2
                             % b = zeroes, a = poles
[y,t]=impz(b,a,101);    % impz = impluse response(in time domain) 
                        % where, y = coefficients b, t = coefficients a
                        % let, 101 = no of sampling [0-100]
figure(3);              % for 3rd figure
plot(t,y,'k');          % plot in x-axis = t,  y-axis = y in time domain, k = black
grid on;
title("Impulse Response of y = x(t)");
xlabel("t = time");
ylabel("y = x(t)");

figure(4);              % for 4th figure
freqz(b,a,501,Fs);% for frequency response in f-domain
                  % 501 = no of frequency samples
                  % Fs = sampling frequency used for
                  % normalization
title("Frequency Response of y = x(f) in db unit");
xlabel("f Hz = frequency");
ylabel("Amplitude(db) of y = x(f)");


