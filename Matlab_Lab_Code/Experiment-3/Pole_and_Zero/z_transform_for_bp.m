[P,Z] = pzmap([1 0 -1], [1 0 0.877]);%P = Pole, Z= Zero

pzmap([1 0 -1], [1 0 0.877]);

b = [1 0 -1];       % b coefficients of z transform X(z)=b0+b1y1+b2y2/a0+a1x1+a2x2

a = [1 0 0.877];    % a coefficients of z transform X(z)=b0+b1y1+b2y2/a0+a1x1+a2x2


Fs = 500;         % Fs = sampling frequency
freqz(b,a,512,Fs);% for frequency response in f-domain
                  % 501 = no of frequency samples
                  % Fs = sampling frequency used for
                  % normalization
title("Frequency Response of y = x(f) in db unit");
xlabel("f Hz = frequency");
ylabel("Amplitude(db) of y = x(f)");