.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset:
ldy #10 ; Initialize the Y register with the decimal value 10
Loop:
; TODO:
; Transfer Y to A
; Store the value in A inside memory position $80+Y
; Decrement Y
; Branch back to "Loop" until we are done