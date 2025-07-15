# 🫀 ECG Signal Analysis Project

This project demonstrates various signal processing techniques for analyzing ECG signals using MATLAB. It covers time-domain, frequency-domain, and time-frequency analysis to extract meaningful cardiac features, including BPM estimation and abnormal rhythm detection.


## 📁 Scripts & Their Purposes

| Script             | Purpose                                 |
|--------------------|-----------------------------------------|
| `requirement_A.m`  | ⏱️ Time-domain visualization           |
| `requirement_B.m`  | 💓 Heartbeat detection                 |
| `requirement_C.m`  | 📈 FFT frequency analysis             |
| `requirement_D.m`  | 🔄 Filtered signal analysis           |
| `requirement_E.m`  | 🔢 BPM estimation in frequency domain|
| `requirement_F.m`  | 📉 Whole-signal BPM tracking         |
| `requirement_G.m`  | 🎛️ STFT time-frequency analysis     |
| `requirement_H.m`  | ⚠️ Abnormal BPM detection            |


## 📊 Results Summary

### 1️⃣ Time-Domain Analysis (Requirements A & B)
- **Visualization:** First 10 seconds of ECG signal plotted (amplitude vs. time).
- **Heartbeat Detection:** Peaks identified using `findpeaks`.

✅ **Average BPM (Time Domain):** 72 BPM

---

### 2️⃣ Frequency-Domain Analysis (Requirements C & E)
- **FFT Spectrum:** Centered at 0 Hz.
- **Dominant Frequency Detection:** 0.5 – 3.33 Hz (corresponding to 30 – 200 BPM).

✅ **Average BPM (Frequency Domain):** 72 BPM

> ✔️ Matches time-domain result.


### 3️⃣ Filtered Signal (Requirement D)
- **Filtering:** Applied Butterworth low-pass filter (f_pass = 10 Hz).
- **Result:** Noise reduced while preserving heartbeat features.


### 4️⃣ Whole-Signal BPM Tracking (Requirement F)
- **BPM Variation:** BPM values plotted across the entire signal duration.
- **Detected Intervals:**
  - High BPM (>100 BPM)
  - Low BPM (<60 BPM)


### 5️⃣ Time-Frequency Analysis (Requirement G)
- **Technique:** Short-Time Fourier Transform (STFT) with Hamming window.
- **Outcome:** Smoother BPM trends and clear visualization of time-varying frequency content.


### 6️⃣ Abnormal BPM Detection (Requirement H)
- **Highlighted Abnormalities:**
  - **High BPM:** 96 – 124.5 sec (28.5 sec duration)
  - **Low BPM:** 174 – 244.5 sec (70.5 sec duration)

## 💡 Key Techniques Used

- Peak detection (`findpeaks`)
- FFT spectral analysis
- Butterworth filtering
- STFT (Short-Time Fourier Transform)
- Abnormal BPM range detection

## 📚 References

- [MATLAB `findpeaks` Documentation](https://www.mathworks.com/help/signal/ref/findpeaks.html)
- [FFT Analysis Guide](https://www.mathworks.com/help/signal/ug/fft.html)
- [STFT for Time-Frequency Analysis](https://www.mathworks.com/help/signal/ug/time-frequency-analysis.html)



## ✅ Conclusion

The project successfully integrates multiple ECG analysis methods, providing both accurate BPM estimations and detection of abnormal heart rhythms. Results from different domains consistently validate each other, support
