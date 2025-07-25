% create window size and overlab 50%
%we need to cap 3 complete periods 3
wind_L = 3 * fs;  
overlap_L = wind_L / 2;        
% and now we need to make window function to length of it 
% after trying we get hamming is best 
win_function = hamming(wind_L);
% now we will divide the filtered all signal and get fourier tranasform to each part 
% and we will get the time and frequency axes corresponding stft
[stft_signal, freq_stft, t_stft ]= stft(filtered_all_signal, fs,'Window', win_function, 'OverlapLength', overlap_L, 'FFTLength', 1500);
% we will get the transform of transformed signal
mag_stft = abs(stft_signal);
% as we say before max and min  heart rate  
% we need to get range of freq 0.5--2.5 and corresponding amp
freq_range = freq_stft(freq_stft >= 0.5 & freq_stft <=2.5);
mags_range = mag_stft(freq_stft >= 0.5 & freq_stft <= 2.5, :);
% we need to take each time segment and search on it for max amp
%  but we dont  need values we need freq corresponding to maximum values 
% so we will create domainant freq vector 
[~, max_locations] = max(mags_range, [], 1);
domainant_freq_stft = freq_range(max_locations);
% bpm = 60 * freq so we will get the BPM vlaues vector 
BPM_values_stft= domainant_freq_stft * 60;
% we will plot 
figure;
plot(t_stft, BPM_values_stft);   
xlabel("Time (s)");
ylabel("BPM");
title("BPM graph in frequency domain using STFT")
legend("Requirement G");
% compared with time domain method
figure;
hold on
plot(time_Bpm,BPM_values,'r'); 
plot(t_stft, BPM_values_stft,'b--'); 
title("compare of time domain method with freq domain method");
legend time-domain frequency-domain              