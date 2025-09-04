; Filename: PRELIM.ASM
; Create a USER INTERFACE using Assembly Language.
; Name: Endrina, Arth Andrey C.
; Date: September 4, 2025

.model small
.stack 100
.code

start:

    ; RED
    mov ah,09h
    mov bl,40h
    mov cx,61
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h

    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h
    
    ; Insert text "Please enter your details"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,30
    int 10h

    mov ah,02h
    mov dl,'P'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,'t'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'y'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'u'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'d'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'t'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'s'
    int 21h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Insert text "Welcome back"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,70h
    mov cx,30
    int 10h

    mov ah,02h
    mov dl,'W'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'c'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'m'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'b'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'c'
    int 21h
    mov dl,'k'
    int 21h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Draw box for entering email address field
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    ; Print top-left corner (218)
    mov ah, 0Eh
    mov al, 218
    int 10h

    ; Print horizontal line (196) x 18
    mov cx, 50

    print_hline:
        mov al, 196
        int 10h
        loop print_hline

    ; Print top-right corner (191)
    mov al, 191
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    ; Print left vertical line (179)
    mov ah, 0Eh
    mov al, 179
    int 10h

    ; Display "Email address"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,6
    int 10h

    mov ah,02h
    mov dl,'E'
    int 21h
    mov dl,'m'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'d'
    int 21h
    mov dl,'d'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'s'
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,55
    int 10h

    ; Print right vertical line (179)
    mov ah, 0Eh
    mov al, 179
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h
    
    ; Print bottom-left corner (218)
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    mov ah, 0Eh
    mov al, 192
    int 10h

    ; Print horizontal line (196) x 18
    mov cx, 50

    print_hline2:
        mov al, 196
        int 10h
        loop print_hline2

    ; Print bottom-right corner (191)
    mov al, 217
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Draw box for entering email address field
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    ; Print top-left corner (218)
    mov ah, 0Eh
    mov al, 218
    int 10h

    ; Print horizontal line (196) x 18
    mov cx, 50

    print_hline3:
        mov al, 196
        int 10h
        loop print_hline3

    ; Print top-right corner (191)
    mov al, 191
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    ; Print left vertical line (179)
    mov ah, 0Eh
    mov al, 179
    int 10h

    ; Display "Password"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,6
    int 10h

    mov ah,02h
    mov dl,'P'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'w'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,'d'
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,55
    int 10h

    ; Print right vertical line (179)
    mov ah, 0Eh
    mov al, 179
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h
    
    ; Print bottom-left corner (218)
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    mov ah, 0Eh
    mov al, 192
    int 10h

    ; Print horizontal line (196) x 18
    mov cx, 50

    print_hline4:
        mov al, 196
        int 10h
        loop print_hline4

    ; Print bottom-right corner (191)
    mov al, 217
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Draw a checkbox
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,70h
    mov cx,3
    int 10h

    mov ah,02h
    mov dl,'['
    int 21h
    mov dl,']'
    int 21h

    ; Display "Remember for 30 days"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,7
    int 10h

    mov ah,02h
    mov dl,'R'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'m'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'m'
    int 21h
    mov dl,'b'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'f'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'3'
    int 21h
    mov dl,'0'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'d'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'y'
    int 21h
    mov dl,'s'
    int 21h

    ; Display "Forgot Password"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,41
    int 10h

    mov ah,09h
    mov bl,79h
    mov cx,15
    int 10h

    mov ah,02h
    mov dl,'F'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,'g'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'t'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'p'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'s'
    int 21h
    mov dl,'w'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,'d'
    int 21h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Sign up button
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,5
    int 10h
    
    mov ah,09h
    mov bl,9Fh
    mov cx,51
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Sign up button
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,5
    int 10h
    
    mov ah,09h
    mov bl,1Fh
    mov cx,51
    int 10h

    ; Display "Sign up"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,27
    int 10h

    mov ah,02h
    mov dl,'S'
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'g'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'u'
    int 21h
    mov dl,'p'
    int 21h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Sign up button
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,5
    int 10h
    
    mov ah,09h
    mov bl,1Fh
    mov cx,51
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Draw box for entering email address field
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    ; Print top-left corner (218)
    mov ah, 0Eh
    mov al, 218
    int 10h

    ; Print horizontal line (196) x 18
    mov cx, 50

    print_hline5:
        mov al, 196
        int 10h
        loop print_hline5

    ; Print top-right corner (191)
    mov al, 191
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    ; Print left vertical line (179)
    mov ah, 0Eh
    mov al, 179
    int 10h

    ; Display "Sign in with Google"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,20
    int 10h
    
    mov ah,02h
    mov dl,'G'
    int 21h
    mov dl,20h
    int 21h
    mov dl,20h
    int 21h
    mov dl,'S'
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'g'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'w'
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'t'
    int 21h
    mov dl,'h'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'G'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'g'
    int 21h
    mov dl,'l'
    int 21h
    mov dl,'e'
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,55
    int 10h

    ; Print right vertical line (179)
    mov ah, 0Eh
    mov al, 179
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h
    
    ; Print bottom-left corner (218)
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,55
    int 10h

    mov ah, 0Eh
    mov al, 192
    int 10h

    ; Print horizontal line (196) x 18
    mov cx, 50

    print_hline6:
        mov al, 196
        int 10h
        loop print_hline6

    ; Print bottom-right corner (191)
    mov al, 217
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Display "Don't have an account?"
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,15
    int 10h

    mov ah,09h
    mov bl,78h
    mov cx,30
    int 10h

    mov ah,02h
    mov dl,'D'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,27h
    int 21h
    mov dl,'t'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'h'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'v'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'c'
    int 21h
    mov dl,'c'
    int 21h
    mov dl,'o'
    int 21h
    mov dl,'u'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,'t'
    int 21h
    mov dl,'?'
    int 21h
    mov dl,20h
    int 21h
    mov dl,20h
    int 21h
    mov dl,20h
    int 21h

    ; Display "Sign up"
    mov ah,09h
    mov bl,79h
    mov cx,10
    int 10h

    mov ah,02h
    mov dl,'S'
    int 21h
    mov dl,'i'
    int 21h
    mov dl,'g'
    int 21h
    mov dl,'n'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'u'
    int 21h
    mov dl,'p'
    int 21h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h
    
    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; NEW LINE
    mov ah,02h
    mov dl,0Ah
    int 21h

    ; RESET COLOR
    mov ah,09h
    mov bl,00h
    mov cx,100
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,0
    int 10h

    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    mov ah,02h
    mov dl,20h
    int 21h
    
    ; LIGHT GRAY
    mov ah,09h
    mov bl,70h
    mov cx,60
    int 10h

    ; RED
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,60
    int 10h
    
    mov ah,09h
    mov bl,40h
    mov cx,1
    int 10h

    ; Created by
    mov ah,02h
    mov bh,0
    mov dh,24
    mov dl,4
    int 10h

    mov ah,09h
    mov bl,70h
    mov cx,30
    int 10h

    mov ah,02h
    mov dl,'C'
    int 21h
    mov dl,'r'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'a'
    int 21h
    mov dl,'t'
    int 21h
    mov dl,'e'
    int 21h
    mov dl,'d'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'b'
    int 21h
    mov dl,'y'
    int 21h
    mov dl,20h
    int 21h
    mov dl,':'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'T'
    int 21h 
    mov dl,'A'
    int 21h
    mov dl,'G'
    int 21h
    mov dl,'A'
    int 21h
    mov dl,'L'
    int 21h
    mov dl,'O'
    int 21h
    mov dl,'G'
    int 21h
    mov dl,','
    int 21h
    mov dl,20h
    int 21h
    mov dl,'A'
    int 21h
    mov dl,'R'
    int 21h
    mov dl,'T'
    int 21h
    mov dl,'H'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'A'
    int 21h
    mov dl,'N'
    int 21h
    mov dl,'D'
    int 21h
    mov dl,'R'
    int 21h
    mov dl,'E'
    int 21h
    mov dl,'Y'
    int 21h
    mov dl,20h
    int 21h
    mov dl,'C'
    int 21h
    mov dl,'.'
    int 21h
    

int 27h
end start