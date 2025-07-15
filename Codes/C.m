%creating the 10s freq vector that shifting center to zero
freq_10s=(-N_10s/2:N_10s/2-1)*fs/N_10s;
%so we will get fast fourier transform 
% after that we will normalize the result with N_10s=3600;
ecg_signal_fft=fft(ecg_signal_10s)/N_10s;
%and shift it to make the center is y axes with fftshift function
shifted_10s_signal=fftshift(ecg_signal_fft);
% ploting the absolute of first 10 seconds shifted ecg against frequency in HZ 
plot(freq_10s,abs(shifted_10s_signal))
% creating axes names
xlabel("Frequency in HZ",FontSize=12);
ylabel("Magnitude of spectrum",FontSize=12);
title("magnitude spectrum OF shifted FFT of 10 second ECG signal","FontSize",12);
legend("Requirement C");
%end