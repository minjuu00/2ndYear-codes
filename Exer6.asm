; Exer6.asm
; Displaying numbers and 20 symbols with space in between
; Name: Prince Darens M. Tagalog
; Date: August 22, 2025

.model small
.code
.stack 100

start:

        ; 0 1 2 3 4 5 6 7 8 9
        ; ! * # $ % ^ & * ( ) 
        ; - _ + = { } [ ] < ?
        mov ah, 02h
        mov cl, '0'
        mov dl, cl
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '1'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '2'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '3'
        int 21h
        
        mov dl, ' '
        int 21h

        mov dl, '4'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '5'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '6'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '7'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '8'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '9'
        int 21h

        mov dl, 0Ah
        int 21h

        mov dl, '!'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '*'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '#'
        int 21h

        mov dl, ' '
        int 21h
        
        mov dl, '$'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '%'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '^'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '&'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '*'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '('
        int 21h

        mov dl, ' '
        int 21h

        mov dl, ')'
        int 21h

        mov dl, 0Ah
        int 21h

        mov dl, '-'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '_'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '+'
        int 21h

        mov dl, ' '
        int 21h
        
        mov dl, '='
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '{'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '}'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '['
        int 21h

        mov dl, ' '
        int 21h

        mov dl, ']'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '<'
        int 21h

        mov dl, ' '
        int 21h

        mov dl, '?'
        int 21h


int 27h
end start