# computer-architecture-subject

## Required software

- **NASM**: https://www.nasm.us/
- **MinGW-w64 (GCC)**: https://www.mingw-w64.org/

## How to run locally

1. Assemble:
   ```
   nasm -f elf64 -o build/program.o src/program.asm
   ```
2. Link:

   ```
   gcc -m64 -nostartfiles -o bin/program build/program.o -lkernel32 -luser32
   ```

3. Run:
   ```
   "./bin/program"
   ```
