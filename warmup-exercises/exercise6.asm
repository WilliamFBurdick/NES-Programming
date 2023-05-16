.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset:
; TODO:
; Load the A register with the decimal value 1
; Load the X register with the decimal value 2
; Load the Y register with the decimal value 3
; Increment X
; Increment Y
; Increment A
; Decrement X
; Decrement Y
; Decrement A