.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset: ; TODO:
; Load the A register with the decimal value 10
; Store the value from A into memory position $80
; Increment the value inside a (zero page) memory position $80
; Decrement the value inside a (zero page) memory position $80