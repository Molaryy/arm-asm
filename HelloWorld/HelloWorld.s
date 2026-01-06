// Let's write "Hey, how was your day?\n" with a string length of 23.

.global _start          // Starting point for the linked

.align 4                // ARM instructions are always 4 bytes.

_start: mov	X0, #1      // 1 = StdOut
    adr	X1, helloworld
 
    mov	X2, #23         // 13 = length of helloworld
                        
                        
    mov	X16, #4         // Unix write system call which is 4
                        // X16 stores the function number

    svc	#0x80           // Kernel will output the string


    mov X0, #0          // Use 0 return code
    mov X16, #1         // Sys call 1 terminates the program
    svc #0x80           // Call the kernet to teminate the program

helloworld:      .ascii  "Hey, how was your day?\n"

