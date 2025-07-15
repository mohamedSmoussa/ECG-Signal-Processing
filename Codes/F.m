% take the whole signal 
% plot of the whole signal against time vector we created before
subplot(2,1,1);
plot(t,ecg_signal);
% create axes names 
xlabel("Time(S)","FontSize",12);
ylabel("Amplitude of spectrum","FontSize",12);
title("whole signal in time domain","FontSize",12);
% now we will apply same filter  we used before to whole signal 
filtered_all_signal=filter(moussa,ecg_signal);
% we need to get the  locations peaks in filtered signal 
% and control the the choosed peaks under cretain sizes
[~,loactions]=findpeaks(filtered_all_signal,"MinPeakHeight",0.5,"MinPeakDistance",0.5*fs);
% we need to get the diffrenece between the  time components 
% we get diffrence using function diff
% dividing by the sampling frequency  converts the difference from samples to seconds.
time_intervals_per_second=diff(loactions)/fs;
% to calc the BPM vector we will divide 60 by time intervals we get before
BPM_values=60./time_intervals_per_second;
% we need to get time vector coressponding to intervals_per second
% we start from index 2 due to diff start subtract from second element 
time_Bpm=t(loactions(2:end));
% plot the BPM values Against time 
subplot(2,1,2);
plot(time_Bpm,BPM_values);
% create axes names
xlabel("Time(S)","FontSize",12);
ylabel("BPM","FontSize",12); 
title("Graph of whole signal BPM Against Time","FontSize",12);
legend("Requirement F")
% end
