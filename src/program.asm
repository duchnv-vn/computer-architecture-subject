section .data
    msg1 db "Cycle 1: Load a into AC", 0
    msg2 db "Cycle 2: Add c to AC", 0
    msg3 db "Cycle 3: Store result in 0x813", 0
    msg4 db "Cycle 4: Load c into AC", 0
    msg5 db "Cycle 5: Subtract b from AC", 0
    msg6 db "Cycle 6: Multiply 0x813 with AC", 0
    msg7 db "Cycle 7: Store final result in b", 0

section .bss
    result resb 64

section .text
    extern MessageBoxA
    extern ExitProcess

global _start

_start:
    ; Cycle 1
    mov eax, 50          ; Load value of a
    mov [result], eax
    push 0
    push msg1
    push 0
    push 0
    call MessageBoxA

    ; Cycle 2
    add eax, 43          ; Add value of c
    mov [result], eax
    push 0
    push msg2
    push 0
    push 0
    call MessageBoxA

    ; Cycle 3
    ; (Store result in memory, not shown in message box)

    ; Cycle 4
    mov eax, 43          ; Load value of c
    mov [result], eax
    push 0
    push msg4
    push 0
    push 0
    call MessageBoxA

    ; Cycle 5
    sub eax, 15          ; Subtract value of b
    mov [result], eax
    push 0
    push msg5
    push 0
    push 0
    call MessageBoxA

    ; Cycle 6
    imul eax, 93         ; Multiply with result from step 3
    mov [result], eax
    push 0
    push msg6
    push 0
    push 0
    call MessageBoxA

    ; Cycle 7
    ; (Store final result in memory, not shown in message box)

    ; Exit
    push 0
    call ExitProcess
