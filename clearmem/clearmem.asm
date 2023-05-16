;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; The iNES Header  (contains 16 bytes with flags at $7FF0);;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.segment "HEADER"
.org $7FF0
.byte $4E,$45,$53,$1A       ; 4 bytes with characters 'N','E','S','\n'
.byte $02                   ; How many 16KB of PRG-ROM we'll use (=32KB) NROM standard
.byte $01                   ; How many 8KB of CHR-ROM we'll use
.byte %00000000             ; Horz mirroring, no battery, mapper 0
.byte %00000000             ; mapper 0, playchoice, NES 2.0
.byte $00                   ; No PRG-RAM
.byte $00                   ; NTSC TV format
.byte $00                   ; No PRG-RAM
.byte $00,$00,$00,$00,$00   ; Unused padding to complete 16 bytes of header
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PRG-ROM code located at $8000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.segment "CODE"
.org $8000                  ; PRG-ROM always begins at $8000
; TODO: Add code of PRG-ROM

RESET:
    sei                     ; disable all IRQ interrupts
    cld                     ; clear decimal mode (unsupported by NES)
    ldx #$FF
    txs                     ; initialize the stack pointer at $01FF (bottom of stack)

    lda #$0                 ; A = $0
    inx #$0                 ; increment X ($FF) by 1 (sets to $0)
MemLoop:
    sta $0,x                ; Store value of A (zero) into $0+X
    dex                     ; X--
    bne MemLoop             ; if X is not zero, loop back to MemLoop

NMI:
    rti

IRQ:
    rti

.segment "VECTORS"
.org $FFFA
.word NMI                   ; address of the NMI handler
.word RESET                 ; address of the RESET handler
.word IRQ                   ; address of the IRQ handler