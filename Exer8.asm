; Exer8.asm
; CROSS (10x10 grid, double-wide version, fixed)
; Name: Prince Darens M. Tagalog
; Date: August 22, 2025

.model small
.stack 100h

.data
    ; Cross pattern data (10 rows × 10 cols = 100 entries)
    ; 0 = empty
    ; 1 = red cross
    ; 6 = blue background
    cross_pattern db 6,6,6,6,6,6,6,6,6,6  ; row 1
                  db 6,6,6,6,6,6,6,6,6,6  ; row 2
                  db 6,6,6,6,1,1,6,6,6,6  ; row 3
                  db 6,6,6,6,1,1,6,6,6,6  ; row 4
                  db 6,6,1,1,1,1,1,1,6,6  ; row 5
                  db 6,6,1,1,1,1,1,1,6,6  ; row 6
                  db 6,6,6,6,1,1,6,6,6,6  ; row 7
                  db 6,6,6,6,1,1,6,6,6,6  ; row 8
                  db 6,6,6,6,6,6,6,6,6,6  ; row 9
                  db 6,6,6,6,6,6,6,6,6,6  ; row 10

.code
main proc
    mov ax, @data
    mov ds, ax
   
    ; Clear screen
    mov ax, 0003h
    int 10h
   
    ; Display the cross pattern
    mov si, 0        ; pattern data index
    mov dh, 5        ; starting row
   
draw_cross:
    mov dl, 10       ; starting column
    call set_cursor
   
    mov di, 0        ; column counter (0–9)
   
draw_row:
    ; Get pattern value
    mov al, cross_pattern[si]
    inc si
   
    ; Select color
    cmp al, 0
    je skip_char
    cmp al, 1
    je red_char
    cmp al, 6
    je blue_background
   
red_char:
    mov al, 219      ; Solid block
    mov bl, 0Ch      ; Bright red
    jmp draw_char
   
blue_background:
    mov al, 219
    mov bl, 11h      ; Blue solid block
    jmp draw_char
   
draw_char:
    call display_char
   
skip_char:
    ; Move to next column
    inc dl
    call set_cursor
    inc di
    cmp di, 10       ; 10 columns per row
    jl draw_row
   
    ; Next row
    inc dh
    cmp dh, 15       ; 5 + 10 rows
    jl draw_cross
   
    ; Wait for key press
    mov ah, 1
    int 21h
   
    ; Exit program
    mov ax, 4C00h
    int 21h
main endp

; Set cursor position procedure
set_cursor proc
    mov ah, 02h
    mov bh, 0
    int 10h
    ret
set_cursor endp

; Display character with color
display_char proc
    mov ah, 09h
    mov bh, 0
    mov cx, 1
    int 10h
    ret
display_char endp

end main
