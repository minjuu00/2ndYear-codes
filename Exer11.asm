; Exer11.asm
; Pixel Emoji Cat (25x26 grid template)
; Name: Prince Darens M. Tagalog
; Date: August 22, 2025

.model small
.stack 100h

.data
    ; Cat pattern (25 rows × 26 cols = 650 pixels)
    ; numbers for colors:
    ; 0 = empty
    ; 1 = black
    ; 2 = gray
    ; 3 = pink (cheeks)
    ; 4 = dark gray
    ; 5 = white

cat_pattern      db 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5  ; row 1
                 db 5,5,5,5,5,5,5,1,5,5,5,5,5,1,5,5,5,5,5,5,5,5,5,5,5,5  ; row 2 
                 db 5,5,5,5,5,5,1,2,1,5,5,5,1,2,1,5,5,5,5,5,5,5,5,5,5,5  ; row 3 
                 db 5,5,5,5,5,5,1,2,4,1,1,1,4,2,1,5,5,5,5,5,5,5,5,5,5,5  ; row 4 
                 db 5,5,5,5,5,1,4,2,2,2,2,2,2,2,4,1,5,5,5,5,5,5,5,5,5,5  ; row 5 
                 db 5,5,5,5,5,1,2,2,2,2,2,2,2,2,2,1,5,5,5,5,5,5,5,5,5,5  ; row 6
                 db 5,5,5,5,1,4,2,2,2,2,2,2,2,2,2,4,1,5,5,5,5,5,5,5,5,5  ; row 7 
                 db 5,5,5,5,1,2,2,1,2,2,1,2,2,1,2,2,1,5,5,5,5,5,5,5,5,5  ; row 8 
                 db 5,5,5,5,1,2,3,2,2,1,2,1,2,2,3,2,1,5,5,5,5,5,5,5,5,5  ; row 9 
                 db 5,5,5,1,4,2,2,2,2,2,2,2,2,2,2,2,4,1,5,5,5,5,5,5,5,5  ; row 10 
                 db 5,5,5,1,4,2,2,2,2,2,2,2,2,2,2,2,4,1,5,5,5,5,5,5,5,5  ; row 11 
                 db 5,5,5,1,2,2,2,2,2,2,2,2,2,2,2,2,2,1,5,5,5,5,5,5,5,5  ; row 13 
                 db 5,5,1,4,4,2,2,2,2,2,2,2,2,2,2,2,4,4,1,5,5,5,5,5,5,5  ; row 14
                 db 5,5,1,4,2,2,2,2,2,2,2,2,2,2,2,2,2,4,1,5,5,5,5,5,5,5  ; row 15 
                 db 5,5,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,5,5,1,1,5,5,5  ; row 16
                 db 5,5,1,4,4,2,2,2,2,2,2,2,2,2,2,2,4,4,1,5,1,2,2,1,5,5  ; row 17 
                 db 5,5,1,4,2,2,2,2,2,2,2,2,2,2,2,2,2,4,1,5,5,1,4,1,5,5  ; row 18
                 db 5,5,1,2,2,2,1,2,2,2,2,2,2,2,1,2,2,2,1,5,5,1,2,1,5,5  ; row 19
                 db 5,5,1,4,2,2,1,2,1,2,2,2,1,2,1,2,2,4,1,1,1,2,2,1,5,5  ; row 20 
                 db 5,5,5,1,4,2,1,2,1,2,2,2,1,2,1,2,4,1,2,2,4,2,1,5,5,5  ; row 21
                 db 5,5,5,5,1,1,1,2,1,1,1,1,1,2,1,1,1,1,1,1,1,1,5,5,5,5  ; row 22 
                 db 5,5,5,5,5,5,1,1,1,5,5,5,1,1,1,5,5,5,5,5,5,5,5,5,5,5  ; row 23 
                 db 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5  ; row 24 

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Clear screen (text mode 80x25)
    mov ax, 0003h
    int 10h

    ; Display the cat pattern
    mov si, 0        ; pattern index
    mov dh, 2        ; starting row on screen

draw_rows:
    mov dl, 10       ; starting column
    call set_cursor

    mov di, 0        ; column counter (0–26)

draw_cols:
    mov al, cat_pattern[si]
    inc si

    ; Select color
    cmp al, 0
    je skip_char
    cmp al, 1
    je black_pixel
    cmp al, 2
    je gray_pixel
    cmp al, 3
    je pink_pixel
    cmp al, 4
    je darkgray_pixel
    cmp al, 5
    je white_bg

black_pixel:
    mov al, 219
    mov bl, 00h      ; black pixel
    jmp draw_char

gray_pixel:
    mov al, 219
    mov bl, 07h      ; Gray
    jmp draw_char

pink_pixel:
    mov al, 219
    mov bl, 0Dh      ; Pink
    jmp draw_char

darkgray_pixel:
    mov al, 219
    mov bl, 08h      ; Dark gray
    jmp draw_char

white_bg:
    mov al, 219
    mov bl, 0Fh      ; White background
    jmp draw_char

draw_char:
    call display_char

skip_char:
    inc dl
    call set_cursor
    inc di
    cmp di, 26       ; columns
    jl draw_cols

    ; Next row
    inc dh
    cmp dh, 25       ; rows
    jl draw_rows

    ; Wait for key press
    mov ah, 1
    int 21h

    ; Exit program
    mov ax, 4C00h
    int 21h
main endp

; Cursor position procedure
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
