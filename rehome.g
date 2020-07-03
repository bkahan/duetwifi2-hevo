; execute when missed steps are found, rehome x and y 

; x axis 

M400 ; wait til stuff stops
M574 X1 Y1 S3 ; use stall guard for endstops
M913 X25 Y25  ; drop motor currents to 30% 
M201 X800 Y800; reduce acceleration on X/Y to stop false triggers
M915 P0:1 S3 R0 F0 H205; both motors because corexy; Sensitivity 4, don’t take action, don’t filter, 400steps/sec
G91 ; set relative
G1 S1 X-400 F2750 ; move left 250mm, stopping at the endstop
G1 X10 F1200; move away from end
G90 ; back to absolute positioning
M400 ; wait again
M913 X100 Y100  ; motor currents back to 100%
M201 X2000 Y2000; accel back to original
M574 X1 Y1 Z0 S0 ; set endstops back 

; y axis 

M400 ; wait til stuff stops
M574 X1 Y1 S3 ; use stall guard for endstops
M913 X25 Y25  ; drop motor currents to 30% 
M201 X800 Y800; reduce acceleration on X/Y to stop false triggers
M915 P0:1 S3 R0 F0 H200; both motors because corexy; Sensitivity 4, don’t take action, don’t filter, 400steps/sec
G91 ; set relative
G1 S1 Y-400 F3000 ; move left 250mm, stopping at the endstop
G1 Y10 F1500; move away from end
G90 ; back to absolute positioning
M400 ; wait again
M913 X100 Y100  ; motor currents back to 100%
M201 X2000 Y2000; accel back to original
M574 X1 Y1 Z0 S0 ; set endstops back 


