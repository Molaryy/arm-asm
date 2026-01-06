// Let's write "Hey, how was your day?\n" with a string length of 23.

.global _start          // Entry point symbol for the linker

.align 4                // Align code to 16-byte boundary

_start:
    mov	X0, #1          // X0 holds the first param of the syscall, 1 = StdOut

    adr	X1, helloworld  // X1 holds the address of the string buffer
 
    mov	X2, #23         // 23 = length of the string
                        
                        
    mov	X16, #4         // Unix write system call which is 4
                        // X16 stores the number

    svc	#0x80           // Kernel call to output the number


    mov X0, #0          // Use 0 return code
    mov X16, #1         // Sys call 1 terminates the program
    svc #0x80           // Call the kernel to teminate the program with a return 0 usin the exit syscall

helloworld:      .ascii  "Hey, how was your day?\n"

