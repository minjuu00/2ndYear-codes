; Exer6.asm
; Displaying I ♥ U with blinking red heart
; Name: Prince Darens M. Tagalog
; Date: August 22, 2025

.model small
.stack 100h
 
.data
    msg_i db 'I$'
    msg_u db 'U$'
 
.code
start proc
    mov ax, @data
    mov ds, ax
   
    ; Clear screen first
    mov ax, 0003h
    int 10h
   
    ; Display "I ♥ U" with blinking red heart
   
    ; Display "I" in white
    mov dh, 10       ; row
    mov dl, 15       ; column
    call set_cursor
    mov bl, 0Eh      ; White on black
    lea dx, msg_i
    call display_string
   
    ; Display space
    mov dh, 10       ; row
    mov dl, 17       ; column (after "I")
    call set_cursor
    mov al, ' '
    mov bl, 0Fh      ; White on black
    call display_single_char
   
    ; Display blinking red heart (♥)
    mov dh, 10       ; row
    mov dl, 17       ; column (adjusted spacing)
    call set_cursor
    mov al, 3        ; Heart character (ASCII 3) or try 4 for solid heart
    mov bl, 84h      ; Blinking (80h) + Red (4) on black (0)
    call display_single_char
   
    ; Display space
    mov dh, 10       ; row
    mov dl, 18       ; column
    call set_cursor
    mov al, ' '
    mov bl, 0Fh      ; White on black
    call display_single_char
   
    ; Display "U" in white
    mov dh, 10       ; row
    mov dl, 19       ; column
    call set_cursor
    mov bl, 0Eh      ; White on black
    lea dx, msg_u
    call display_string
   
    ; Wait for key press
    mov ah, 1
    int 21h
   
    ; Exit program
    mov ax, 4C00h
    int 21h
start endp
 
; Set cursor position procedure
set_cursor proc
    mov ah, 02h      ; Set cursor position function
    mov bh, 0        ; Page number
    int 10h
    ret
set_cursor endp
 
; Display single character with color
display_single_char proc
    ; AL = character, BL = attribute
    mov ah, 09h      ; Write character and attribute
    mov bh, 0        ; Page number
    mov cx, 1        ; Display 1 character
    int 10h
    ret
display_single_char endp
 
; Display string procedure
display_string proc
    push ax
    push bx
    push cx
    push dx
    push si
   
    mov si, dx       ; SI points to string
    mov ah, 09h      ; Write character and attribute
    mov bh, 0        ; Page number
   
display_loop:
    mov al, [si]     ; Get character
    cmp al, '$'      ; Check for end of string
    je display_done
   
    mov cx, 1        ; Display 1 character
    int 10h          ; Display character with attribute in BL
   
    ; Move to next character position
    inc si
    mov ah, 03h      ; Get cursor position
    int 10h
    inc dl           ; Move cursor right
    mov ah, 02h      ; Set cursor position
    int 10h
    mov ah, 09h      ; Restore display function
    jmp display_loop
   
display_done:
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    ret
display_string endp
 
end start