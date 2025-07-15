%reading the heart rete in fs for the signal ECG 
data=load("ecg_data.mat");
% get signal as a vector 
ecg_signal=data.ecg_signal;
% get sampling rate from structure
fs=data.fs;
%calc the number of elements of signal
N=length(ecg_signal);
%creating time vector
t=(0:N-1)/fs;
%creating vectors for first 10 seconds 
N_10s=10*fs;
% time vector
t_10s=t(1:N_10s);
% get the 10 second part of all signal
ecg_signal_10s=ecg_signal(1:N_10s);
% plot the first 10 seconds of signl in time domain
plot(t_10s,ecg_signal_10s);
%creating axes name and graph title 
xlabel("Time(S)","FontSize",12);
ylabel("Amplitude of spectrum","FontSize",12);
title("First 10 seconds of the signal in time domain","FontSize",12);
legend('Requirement A');
%end
