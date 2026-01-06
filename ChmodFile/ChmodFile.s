// 15	AUE_CHMOD	ALL	{ int chmod(user_addr_t path, int mode) NO_SYSCALL_STUB; }
// The purpose here is to be able to call the syscall AUE_CHMOD to give a file permissions


.global _start          // Entry point for the linker

.align 4                // Align code to 16-byte boundary

_start:
    adr X0, chmodfile   // X0 holds the path of the file

    mov X1, #0777        // X1 holds the mode
    
    mov X16, #15        // Unix chmod system call

    svc #0x80           // Kernel call to the stored syscall

    mov X0, X0          // Use 0 return code
    mov X16, #1         // Sys call 1 terminates the program
    svc #0x80           // Call the kernel to teminate the program

chmodfile:      .asciz  "/tmp/newfile"

