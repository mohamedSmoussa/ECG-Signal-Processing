% in time domain BPM graph 
% first we will get the vectors of out of range values for 2 domains  
Bpm_high=BPM_values(BPM_values>100);
Bpm_low=BPM_values(BPM_values<60);
BPM_high_stft=BPM_values_stft(BPM_values_stft>100);
BPM_low_stft=BPM_values_stft(BPM_values_stft<60);
% and get time vector corresponding to out of range values to 2 domins 
t_high=time_Bpm(BPM_values>100);
t_low=time_Bpm(BPM_values<60);
t_high_stft=t_stft(BPM_values_stft>100);
t_low_stft=t_stft(BPM_values_stft<60);
% first we plot the original BPM graph 
% and we will hold the two graphs in 1 figure for 2 domains 
subplot(2,1,1);
hold on;
% for time domain 
plot(time_Bpm,BPM_values);
% we will plot the high and low  values with different shapes to highlight it 
plot(t_high,Bpm_high,"ro");
plot(t_low,Bpm_low,"go");
% axes names 
xlabel("Time(S)","FontSize",12);
ylabel("BPM","FontSize",12); 
title("highlight in time domain","FontSize",12);
legend("Requirement H",'Bpm high','Bpm low');
% for freq domain
subplot(2,1,2);
hold on
plot(t_stft,BPM_values_stft);
% we will plot the high and low  values with different shapes to highlight it 
plot(t_high_stft,BPM_high_stft,"ro");
plot(t_low_stft,BPM_low_stft,"go");
% axes names 
xlabel("Time(S)","FontSize",12);
ylabel("BPM","FontSize",12); 
title("highlight in frequency domain","FontSize",12);
legend("Requirement H",'BPM high','BPM Low');
% after that we need to display the time intervals of low and high intervals
% we will get for 2 domains
fprintf("time domain\n");
fprintf(" start High BPM interval: %.4f\tto end High BPM interval: %.4f seconds\n", t_high(1),t_high(end));
fprintf(" start Low BPM interval: %.4f\tto end Low BPM interval: %.4f seconds\n", t_low(1),t_low(end));
fprintf(" time domain High BPM interval: %.4f seconds\n", t_high(end)-t_high(1));
fprintf(" time domain Low BPM interval: %.4f seconds\n", t_low(end)-t_low(1));
fprintf("frequency domain\n");
fprintf(" start High BPM interval: %.4f\tto end High BPM interval: %.4f seconds\n", t_high_stft(1),t_high_stft(end));
fprintf(" start Low BPM interval: %.4f\tto end Low BPM interval: %.4f seconds\n", t_low_stft(1),t_low_stft(end));
fprintf(" freuency domain High BPM interval: %.4f seconds\n",t_high_stft(end)-t_high_stft(1));
fprintf(" frequency domain Low BPM interval: %.4f seconds\n", t_low_stft(end)-t_low_stft(1));
%end;

