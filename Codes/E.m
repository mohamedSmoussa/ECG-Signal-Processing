% in frequency domain BPM =frequency *60
% we know Maximum BPM is 200 BPM and let say the minumum BPM is 30 BPM  
% so we need to search in postive frequencies the elements from 0.5-->3.33 
% we will create the vector of range frequencies from 10_s frequency vector
fundmental_frequency_range = freq_10s(freq_10s >=0.5 & freq_10s <=3.33);
% we need to get the abs response value according to domainant frequency range 
% note we use the 10_s filtered signal frequency domain
spectrum_of_freq= abs(sh_filtered_10s_signalfft(freq_10s >=0.5 & freq_10s <=3.33));
 % after that we need to get the frequency component which is have max amp
 % the maximum response at domainant freq in valid range
 % first get the place of max response from spectrum_of_freq vector
 % we will use function find to find the index at maximum spectrum
place_of_max = find(spectrum_of_freq == max(spectrum_of_freq));
% after that we will put the index of max spectrum to get the corresponding frequency 
frequency_of_max_spectrum = fundmental_frequency_range(place_of_max);
% why we do that becuase the Avg_BPM in frequency domain 
% Avg_BPM =frequency_of_valid_max_spectrum*60 to became rate per minute
disp("Requirement E ")
Avg_BPM_fd = frequency_of_max_spectrum * 60
% end 