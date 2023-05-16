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

    clc
    adc #1              ; Add 1 to A (The 6502 has no "inc A" instruction)

    dex                 ; Decrement X
    dey                 ; Decrement Y

    sec
    sbc #1              ; Subtract 1 from A (The 6502 has no "dec A" instruction)
                        ; There is no way to directly increment or decrement A, only X and Y
                        ; Which is why X and Y are great choices for controlling loops

    jmp Reset           ; Jump to Reset to force infinite loop

NMI:                    ; NMI handler
    rti                 ; doesn't do anything
IRQ:                    ; IRQ handler
    rti                 ; doesn't do anything
.segment "VECTORS"      ; Add addresses with vectors at $FFFA
.org $FFFA
.word NMI               ; Put 2 bytes with the NMI address at memory position $FFFA
.word Reset             ; Put 2 bytes with the break address at memory position $FFFC
.word IRQ               ; Put 2 bytes with the IRQ address at memory position $FFFE