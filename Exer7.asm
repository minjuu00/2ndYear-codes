; Exer7.asm
; Displaying single characters with different background colors for each word,
; newlines after each word
; Name: Prince Darens M. Tagalog
; Date: August 22, 2025

.model small
.stack 100h
 
.data
    msg1 db 'College$'
    msg2 db 'of$'
    msg3 db 'Computer$'
    msg4 db 'Studies$'
 
.code
main proc
    mov ax, @data
    mov ds, ax
   
    ; Clear screen first
    mov ax, 0003h
    int 10h
   
    ; Display "College" with yellow foreground, green background
    mov dh, 5        ; row
    mov dl, 10       ; column
    call set_cursor
    mov bl, 2Eh      ; Yellow on Green (Yellow=14/E, Green=2)
    lea dx, msg1
    call display_string
   
    ; Display "of" with white foreground, red background
    mov dh, 7        ; row
    mov dl, 10       ; column
    call set_cursor
    mov bl, 4Fh      ; White on Red (White=15/F, Red=4)
    lea dx, msg2
    call display_string
   
    ; Display "Computer" with white foreground, blue background
    mov dh, 9        ; row
    mov dl, 10       ; column
    call set_cursor
    mov bl, 1Fh      ; White on Blue (White=15/F, Blue=1)
    lea dx, msg3
    call display_string
   
    ; Display "Studies" with white foreground, yellow background
    mov dh, 11       ; row
    mov dl, 10       ; column
    call set_cursor
    mov bl, 10h      ; White on Blue (White=15/1, Blue=1)
    lea dx, msg4
    call display_string
   
    ; Wait for key press
    mov ah, 1
    int 21h
   
    ; Exit program
    mov ax, 4C00h
    int 21h
main endp
 
; Procedure to set cursor position
set_cursor proc
    mov ah, 02h      ; Set cursor position function
    mov bh, 0        ; Page number
    int 10h
    ret
set_cursor endp
 
; Procedure to display colored string
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
 
end main