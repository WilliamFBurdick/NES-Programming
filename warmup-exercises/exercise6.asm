.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset:
; TODO:
    lda #1              ; Load the A register with the decimal value 1
    ldx #2              ; Load the X register with the decimal value 2
    ldy #3              ; Load the Y register with the decimal value 3
    inx                 ; Increment X
    iny                 ; Increment Y
    inc                 ; Increment A
    dex                 ; Decrement X
    dey                 ; Decrement Y
    dec                 ; Decrement A