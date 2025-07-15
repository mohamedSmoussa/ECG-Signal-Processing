
% we want to know number of heart beats for the first 10 seconds 
% each beat represnted by peak which is resposne to heart in 10 seconds
% so we will use function that find peaks and creating peaks vector 
% so we will count peaks which is seprated by certain distance 
% and count peaks which is more than cretain value according to MIN BPM 30
% this value(factor of the max peak value of 10 second signal )
% another peaks represent noise (we dont need it)
peaks_10s=findpeaks(ecg_signal_10s,'MinPeakHeight',0.5,'MinPeakDistance', 0.5*fs);
% we will get the length of vector peaks_fts that mean number of beats 
num_of_beats=length(peaks_10s);
% after that multiply the number of beats by 6 to get the value per minutes
disp("Requirement B");
Avg_BPM_td=(num_of_beats)*6
%end