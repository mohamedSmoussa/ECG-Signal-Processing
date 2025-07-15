% first we will design a  low pass filter 
load('filtermoussa.mat')
filtered_10s_signal=filter(moussa,ecg_signal_10s);
% we will plot the filtered signal  in time domain 
subplot(2,1,1); 
plot(t_10s, filtered_10s_signal); 
% axes names
xlabel("Time (s)"); 
ylabel("Amplitude");
title("Filtered  10 second ECG Signal in Time domain");
% we will compute fft of 10s filtered signal and normalize it with N_10s
filtered_10s_signalfft=fft(filtered_10s_signal)/N_10s;
%we will shift the signal with fftshift 
sh_filtered_10s_signalfft=fftshift(filtered_10s_signalfft);
%we will plot the abs of shifted signal aganist freq_10s
subplot(2,1,2);
plot(freq_10s,abs(sh_filtered_10s_signalfft))
%create axes names
xlabel("Frequency in HZ");
ylabel("Magnitude of filtered spectrum");
title("  magnitude OF Filtered shifted FFT of 10 second ECG signal");
legend("Requirement D")
%end