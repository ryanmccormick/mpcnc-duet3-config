0:/sys/config.g
; Configuration file for Duet 3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.10 on Sun Dec 06 2020 22:16:58 GMT-0600 (Central Standard Time)

; General preferences
G90                                     ; send absolute coordinates...
M83                                     ; ...but relative extruder moves
M550 P"Duet 3"                          ; set printer name

; Dual X and Dual Y
M584 X0:1 Y2:3 Z4                       ; set drive mapping

; Drives
M569 P0 S1                              ; XA - physical drive 0.0 goes forwards
M569 P1 S0                              ; XB - physical drive 0.1 goes backwards
M569 P2 S0                              ; YA - physical drive 0.2 goes backwards
M569 P3 S1                              ; YB - physical drive 0.3 goes forwards
M569 P4 S0                              ; Z - physical drive 0.3 goes forwards
M350 X16 Y16 Z16 I1                     ; configure microstepping with interpolation
M92 X100.00 Y100.00 Z400.00             ; set steps per mm
M566 X900.00 Y900.00 Z60.00             ; set maximum instantaneous speed changes (mm/min)
M203 X10000.00 Y10000.00 Z180.00        ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00             ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 E800 I30            ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                 ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z-100 S1                     ; set axis minimum
M208 X720 Y720 Z80 S0                   ; set axis maximum

; Endstops
M574 X1 S1 P"io1.in+io2.in"             ; configure active-high endstop for low end on X via pin io0.in
M574 Y1 S1 P"io3.in+io4.in"             ; configure active-high endstop for low end on Y via pin io2.in
M574 Z1 S1 P"!io7.in"                   ; configure active-high endstop for low end on Z via pin io7.in

; Z-Probe
;M558 P8 C"!io7.in" H10 F120 T3000      ; Z probe connected to E0 endstop input
;G31 Z1.5

; M950 P0 C"out1" 						; create bed heater output on out1 and map it to sensor 0
M950 P0 C"out2" 						; create vacuum control

;G54									; Use Workspace coordinate system
;M564 S0 H0								; Allow movement without homing (without axis maxima)
M575 P0 S0 B57600						; Configure paneldue output for CNC Pendant Use

; Heaters

; Fans

; Tools
;M563 P0 D0 F0                          ; define tool 0
M563 P0 D0 F0 S"Spindle"                ; define tool 0
G10 P0 X0 Y0 Z0                         ; set tool 0 axis offsets
G10 P0 R0 S0                            ; set initial tool 0 active and standby temperatures to 0C

; CNC
M453 C"nil+out1+nil" T0;      								; Set into cnc mode

; Custom settings are not defined


