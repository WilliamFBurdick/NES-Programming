.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset:
; TODO:
; Load the A register with the hexadecimal value $A
; Load the X register with the binary value %1010
; Store the value in the A register into (zero page) memory address $80
; Store the value in the X register into (zero page) memory address $81
; Load A with the decimal value 10
; Add to A the value inside RAM address $80
; Add to A the value inside RAM address $81
; A should contain (#10 + $A + %1010) = #30 (or $1E in hexadecimal)
; Store the value of A into RAM position $82