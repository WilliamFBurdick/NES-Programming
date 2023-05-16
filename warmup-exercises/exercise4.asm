.segment "HEADER"       ; Don’t forget to always add the iNES header to your ROM files
.org $7FF0
.byte $4E,$45,$53,$1A,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.segment "CODE"
.org $8000
Reset: ; TODO:
    lda #100            ; Load the A register with the literal decimal value 100
    clc                 ; Add the decimal value 5 to the accumulator
    adc #5                    
    sec
    sbc #10             ; Subtract the decimal value 10 from the accumulator
                        ; Register A should now contain the decimal 95 (or $5F in hexadecimal)