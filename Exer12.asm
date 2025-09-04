.model small
.stack 100h

.data
    ; String variable 1 - Name
    name_str db 'Prince Darens Maningas Tagalog$'
    
    ; String variable 2 - Course and Year
    course_str db 'Bachelor of Science in Computer Science 2nd Year$'
    
    ; String variable 3 - College
    college_str db 'College of Computer Studies$'
    
    ; String variable 4 - University
    university_str db 'Cebu Institute of Technology - University$'
    
    ; New line string for formatting
    newline db 0Dh, 0Ah, '$'

.code
main proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax
    
    ; Display first string - Name
    lea dx, name_str
    mov ah, 09h
    int 21h
    
    ; Display newline
    lea dx, newline
    mov ah, 09h
    int 21h
    
    ; Display second string - Course
    lea dx, course_str
    mov ah, 09h
    int 21h
    
    ; Display newline
    lea dx, newline
    mov ah, 09h
    int 21h
    
    ; Display third string - College
    lea dx, college_str
    mov ah, 09h
    int 21h
    
    ; Display newline
    lea dx, newline
    mov ah, 09h
    int 21h
    
    ; Display fourth string - University
    lea dx, university_str
    mov ah, 09h
    int 21h
    
    ; Display final newline
    lea dx, newline
    mov ah, 09h
    int 21h
    
    ; Exit program
    mov ax, 4C00h
    int 21h
    
main endp
end main