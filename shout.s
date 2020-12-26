/*
    Author: Parsia Hedayat (A15622748)
    Help: Professor Muller
    Academic Integrity Agreement: Parsia Hedayat
    Estimated number of hours: 10 (lots of diagramming)
*/

// Describe the Hardware to the assembler
        .arch   armv6
        .cpu    cortex-a53
        .syntax unified
// externs
        .extern putchar
// Constants
        .equ    NULL,   0x0 
        .equ    EOF,    -1 
        .equ    EXIT_SUCCESS, 0   // success return from main
        .equ    EXIT_FAILURE, 1   // error return from main
        .equ    WSTEP,   4        // step of argv

        .text
        .type   main, %function   // main is a function
        .global main              // export main
        .equ    FP_OFFSET, 12     // (saved reg - 1) * 4
main:
        push    {r4, r5, fp, lr}  // saved registers
        add     fp, sp, FP_OFFSET // set frame pointer

        mov     r5, r1            // save argv pointer
        add     r5, r5, WSTEP     // point to argv[1]

        /*  ADD YOUR CODE HERE */
	ldr	r4, [r5]	// get the first argument
	cmp	r4, NULL	// check if it's NULL
	beq	success		// if it's NULL, we can end
				// this means nothing was passed
	
loop:
	ldrb	r0, [r4]	// load next character in string

	cmp	r0, NULL	// check if NULL, i.e. end of string
	beq	nextarg		// go to nextarg if at end of string

	cmp	r0, ' '		// check char against our lower bound
	blt	skipchar	// if it is, skip that character

	cmp	r0, '~'		// check char against our upper bound
	bgt	skipchar	// if it is, skip that character
	
	cmp	r0, 'a'		// checking to see if we even need to cap
	blt	printchar	// print the char out if not

	cmp	r0, 'z'		// again checking if cap needed
	bgt	printchar	// print the char if not
	
	mov	r2, 'a'-'A'	// get the ASCII diff between lower and upper
	sub	r0, r0, r2	// capitalize the letter
printchar:
	bl	putchar		// call the C function putchar()
	cmp	r0, EOF		// make sure putchar() worked
	beq	failure		// if it didn't, return EXIT_FAILURE
skipchar:
	add	r4, r4, 1	// increment pointer counter
	b	loop		// continue looping
nextarg:
	add	r5, r5, WSTEP	// increment to the next argument in argv

	ldr	r4, [r5]	// load arg to be looped through
	cmp	r4, NULL	// check if it's NULL, i.e. the last arg
	beq	newline		// finish program with a newline
	
	mov	r0, ' '		// used to print the space between args
	bl	putchar		// print out the space
	cmp	r0, EOF		// make sure putchar() worked
	beq	failure		// if it didn't, return EXIT_FAILURE

	b	loop		// begin looping through new arg
newline:
	mov	r0, '\n'	// move newline character for printing
	bl	putchar		// print the newline
	cmp	r0, EOF		// make sure putchar() worked
	bne	success		// if it didn't, return EXIT_SUCCESS
failure:
	mov	r0, EXIT_FAILURE	// set return to 1 for failure
	b	done			// finish the program
success:
	mov	r0, EXIT_SUCCESS	// set return to 0 for success
	b	done			// finish the program
done:
        sub     sp, fp, FP_OFFSET // restore stack frame top
        pop     {r4, r5, fp, lr}  // remove stack frame and restore 
        bx      lr                // return to calling function
        .size	main, (. - main)
.end

/*
	TODO:
		1. Add quotes feature
		2. Even separate args are being printed weird.
		   Continue testing
*/
