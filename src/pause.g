; pause.g
; called when a print from SD card is paused
;
; generated by RepRapFirmware Configuration Tool v3.1.10 on Sun Dec 06 2020 22:16:59 GMT-0600 (Central Standard Time)
; M83            ; relative extruder moves
; G1 E-10 F3600  ; retract 10mm of filament
; G91            ; relative positioning
; G1 Z5 F360     ; lift Z by 5mm
; G90            ; absolute positioning
; G1 X0 Y0 F6000 ; go to X=0 Y=0

; CNC CONFIG
G1 Z195 F360              ; Lift Z to 5mm below the Z maximum
M5                        ; Turn off the spindle
G4 S10                    ; Wait for the spindle to stop
G1 X0 Y0 F6000            ; Go to X=0 Y=0