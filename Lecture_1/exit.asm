; Program : exit
;
; Executes the exit system call 
;
; No input
;
; Output only the exit status ($? in the shell)
;

segment .text
global _start
_start:
    mov eax, 1    ; existing call number for exit
    mov ebx, 5    ; the status code to return
    int 0x80      ; execute the system call
    ; The program will exit with status code 5
    ; No further code will be executed after this point