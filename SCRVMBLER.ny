;nyquist plug-in 
;version 3 
;type process 
;name "ScrVmbl3R V42.0.69..." 
;author "Tharii314"
;copyright "Attempts to invert the audio spectrum as you wish xo"
;control g "Gain (Volume Warning!)" float "x" 1 0 12
;control b "Low Pass" float "Hz" 8000 20 20000
;control z "Center Frequency" float "Hz" 5000 1 10000
;control h "Bandwidth" float "Hz" 20 1 16000

(lowpass8 (mult g (highpass8 s h) (hzosc z)) b)