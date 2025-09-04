; Exer7.asm
; DUCK
; Name: Prince Darens M. Tagalog
; Date: August 22, 2025
 
.model small
.stack 100h
 
.data
    ; Duck pattern data - each byte represents the color for that position
    ; 0=empty, 1=yellow, 2=orange, 3=black, 4=blinking yellow
    ; Based on the grid pattern - proper duck shape
    duck_pattern db 6,6,6,6,6,6,6,6,6,6,6,6,6,6  ; row 1
                 db 6,6,6,6,1,1,1,1,6,6,6,6,6,6  ; row 2 (blink at end)
                 db 6,6,6,1,1,1,1,1,1,6,6,6,6,6  ; row 3 (orange beak)
                 db 6,6,6,2,1,4,1,1,1,6,6,6,6,6  ; row 4 (more beak)
                 db 6,2,2,2,1,1,1,1,1,6,6,6,6,6  ; row 5 (beak + body)
                 db 6,6,2,2,2,1,1,1,6,6,6,6,6,6  ; row 6
                 db 6,6,6,6,1,1,1,6,1,1,1,6,1,6  ; row 7 (full body)
                 db 6,6,6,1,1,1,1,1,1,1,1,3,1,6  ; row 8 (black eye)
                 db 6,6,1,1,1,1,3,1,1,1,3,1,1,6  ; row 9 (eyes and nostril)
                 db 6,6,1,1,1,1,1,3,3,3,1,1,1,6  ; row 10 (black smile)
                 db 6,6,1,1,1,1,1,1,1,1,1,1,1,6  ; row 11 (lower body)
                 db 6,6,6,1,1,1,1,1,1,1,1,1,6,6  ; row 12 (bottom)
                 db 6,6,6,6,1,1,1,1,1,1,1,6,6,6  ; row 13 (tail)

 
.code
main proc
    mov ax, @data
    mov ds, ax
   
    ; Clear screen first
    mov ax, 0003h
    int 10h
   
    ; Display the duck pattern
    mov si, 0        ; pattern data index
    mov dh, 5        ; starting row
   
draw_duck:
    mov dl, 10       ; starting column
    call set_cursor
   
    mov di, 0        ; column counter (0-13)
   
draw_row:
    ; Get pattern value
    mov al, duck_pattern[si]
    inc si
   
    ; Determine color based on pattern value
    cmp al, 0
    je skip_char     ; empty space - don't draw
    cmp al, 1
    je yellow_char
    cmp al, 2
    je orange_char
    cmp al, 3
    je black_char
    cmp al, 4
    je blink_yellow_char
    cmp al, 5
    je blink_black_char
    cmp al, 6
    je white_background
   
yellow_char:
    mov al, 219
    mov bl, 0Eh     ; Yellow body
    jmp draw_char
   
orange_char:
    mov al, 219
    mov bl, 0Ch     ; Orange beak
    jmp draw_char
   
black_char:
    mov al, 219
    mov bl, 00h      ; Black background
    jmp draw_char
   
blink_yellow_char:
    mov al, 219
    mov bl, 8Eh      ; Blinking yellow background (80h + 0Eh)
    jmp draw_char
 
blink_black_char:
    mov al, ' '
    mov bl, 80h      ; Blinking effect only (80h + 00h = blink with black)
    jmp draw_char

white_background:
    mov al, 219
    mov bl, 0Fh     ; White background
    jmp draw_char
   
draw_char:
    call display_char
   
skip_char:
    ; Move to next column
    inc dl
    call set_cursor
    inc di
    cmp di, 14       ; 14 columns per row
    jl draw_row
   
    ; Move to next row
    inc dh
    cmp dh, 18       ; check if done with all rows (5+13=18)
    jl draw_duck
   
    ; Wait for key press
    mov ah, 1
    int 21h
   
    ; Exit program
    mov ax, 4C00h
    int 21h
main endp
 
; Set cursor position procedure
set_cursor proc
    mov ah, 02h      ; Set cursor position function
    mov bh, 0        ; Page number
    int 10h
    ret
set_cursor endp
 
; Display character with color
display_char proc
    mov ah, 09h      ; Write character and attribute
    mov bh, 0        ; Page number
    mov cx, 1        ; Display 1 character
    int 10h
    ret
display_char endp
 
end main