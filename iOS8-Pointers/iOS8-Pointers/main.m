//
//  main.m
//  iOS8-Pointers
//
//  Created by Paul Solt on 10/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Function declaration
void cStringExercise(void);

// C function in an Objective-C File (.m)
int main(int argc, const char * argv[]) {
	@autoreleasepool {

		printf("Hello, World!\n");

		char letter = 't';
		printf("letter: %c\n", letter);	// Print a character

		float float_pi = 3.14159265359;  // Rounds to: 3.14159274
		double pi = 3.14159265359;
		printf("pi: %f\n", pi);	    // prints: 3.141593  (May round for printing)
		printf("pi: %0.2f\n", pi); // prints: 3.14
		
		long value = 42;
		printf("value: %li\n", value);

		// Pointer to a "long" number (Write down your friends address for later - Add to Contacts)
		long *addressOfValue = &value; // & = address of
		printf("addressOfValue: %p\n", addressOfValue);
		printf("&value: %p\n", &value);
		
		// Dereference the pointer (Drive to the address using GPS)
		printf("*addressOfValue: %li\n", *addressOfValue);
		
		
		char *ptr = "Hello, World!\n";
		printf("ptr: %s\n", ptr);		// Print a C String

		// 0x2A   // Hexidecimal (0x)
		// 0010 1010 // Binary
		
		// String Tokens

		// %p = pointer address
		// %s = c string
		// %@ = NSLog = object (won't work in printf)
		// %d = integer (base 10)
		// %f = floating point number

		// 'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '!', '\n', '\0'
		//  0    1    2    3    4    5    6    7    8    9    10   11   12    13

		// Binary (Base 2)
		// 0 1

		// Decimal (Base 10)
		// 0 1 2 3 4 5 6 7 8 9

		// Hexidecimal (Base 16)
		//                     10 11 12 13 14 15
		// 0 1 2 3 4 5 6 7 8 9 A  B  C  D  E  F

		// Objects are dynamically allocated
		// House is built on a property (land)
		// 1. Buy the land
		// 2. Build the house
		
		// Allocator (Township / Individual)
		// 1. I need memory to store a 24MB image
		//  ... ok here's memory address (123 Infinite Loop)
		// 2. Initialize the memory
		//  ... let's store the Red, Green, Blue colors in one big array
		
		cStringExercise();
	}
	return 0; // 0 = success, Any other value is failure
}


// Function definition

// Goal: Print Your Name
void cStringExercise(void) {
    char *message = "Hello xxxxxxxxxxxxxxxxxxxx!"; // '\0' = null terminated

    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);

    unsigned long length = strlen(message);
	printf("Please allocate a string of size: %zu\n", sizeof(char) * length + 1);
    char *ptr = malloc(sizeof(char) * length + 1);	// memory allocation
    ptr = strcpy(ptr, message);

	// Set your name!

    ptr[6] = 'P'; // START HERE
	ptr[7] = 'a';
	ptr[8] = 'u';
	ptr[9] = 'l';
	ptr[10] = '!';
	ptr[11] = '\0';   // Null terminate with '\0'
	
    printf("message: %s\n", ptr);

	// Expected: message: Hello Paul!    // No x's!
	
    free(ptr);
}

