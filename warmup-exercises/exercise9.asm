.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset:
lda #1 ; Initialize the A register with 1
Loop:
; TODO:
; Increment A
; Compare the value in A with the decimal value 10
; Branch back to "Loop" if the comparison was not equals (to zero)