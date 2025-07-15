📊 ECG Signal Analysis Project 🫀
This project demonstrates various signal processing techniques for analyzing ECG signals in MATLAB.

Script	Purpose
requirement_A.m	⏱️ Time-domain visualization
requirement_B.m	💓 Heartbeat detection
requirement_C.m	📈 FFT frequency analysis
requirement_D.m	🔄 Filtered signal analysis
requirement_E.m	🔢 BPM in frequency domain
requirement_F.m	📉 Whole-signal BPM tracking
requirement_G.m	🎛️ STFT time-frequency analysis
requirement_H.m	⚠️ Abnormal BPM detection

📊 Results
1️⃣ Time-Domain Analysis (Requirement A & B)
✅ First 10 seconds of ECG signal plotted with amplitude vs. time.
✅ Heartbeat detection using peak-finding (findpeaks):

Average BPM (Time Domain): 72 BPM ✔️

2️⃣ Frequency-Domain Analysis (Requirement C & E)
✅ FFT spectrum centered at 0 Hz.
✅ Dominant frequency detection (0.5–3.33 Hz → 30–200 BPM).

Average BPM (Frequency Domain): 72 BPM ✔️

Validation: Matches time-domain result.

3️⃣ Filtered Signal (Requirement D)
✅ Butterworth low-pass filter applied (f_pass = 10 Hz).
✅ Cleaned signal retains heartbeat features while reducing noise.

4️⃣ Whole-Signal BPM Tracking (Requirement F)
✅ BPM variations over time plotted.
✅ Detected:

High BPM intervals (>100 BPM)
Low BPM intervals (<60 BPM)

5️⃣ STFT Analysis (Requirement G)
✅ Time-varying frequency content using Hamming window.
✅ Smoother BPM trends compared to time-domain method.

6️⃣ Abnormal BPM Detection (Requirement H)
✅ Highlighted abnormal ranges in both domains:

High BPM: 96–124.5 sec (28.5 sec duration)
Low BPM: 174–244.5 sec (70.5 sec duration)

📚 References
MATLAB findpeaks Documentation 📄
FFT Analysis Guide 📈
STFT for Time-Frequency Analysis ⏳
