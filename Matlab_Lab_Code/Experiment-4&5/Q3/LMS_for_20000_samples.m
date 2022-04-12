% Next Part: Taking 20000 samples of sound wave
load handel % Load an original signal
s = y(1:20000); % Taking 4000 samples of sound wave
s = s';
noise = 0.12*randn(1,length(s)); % Generate a random noise
sn = s + noise; % Adding noise with original sound
%Now Filtering the signal using LMS algorithm with step size mu = 0.02
lmsfilt = dsp.LMSFilter('Length', 16 , 'Method','Normalized LMS', 'StepSize' ,0.02);
[y,e,w] = lmsfilt(noise', sn'); % y = original sound , e = Estimated error , w = weighted factor
t = 1:1:length(s);
t = t / 500;
subplot(3,1,1);
plot(t,s,'b') % Plot the original continuous sound signal
title('Original Signal');
xlabel('n = 20000 samples');
subplot(3,1,2);
plot(t,sn,'r') % Plot the noisy continuous sound signal
title('Noisy Signal');
xlabel('n = 20000 samples');
subplot(3,1,3);
plot(t,e,'k'); % Plot the filtering de-noisy continuous sound signal
title('Filtering De-Noisy Signal For Step Size = 0.02');
xlabel('n = 20000 samples');