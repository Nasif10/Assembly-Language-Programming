## Assembly Language Programming
### Assignment 01
1. Draw the diagram of Intel 8086 Microprocessor organization.<br>
2. Consider a machine language instruction that moves a copy of the contents of register AX in the CPU to a memory word. What happens during the fetch cycle and execution cycle.
  
### Assignment 02
1. Suppose that a byte contains the ASCII code of a lower case letter. What hex number should be added to/subtracted from it to convert it to upper case?<br> 
2. For each of the following 16-bit signed numbers, tell whether it is positive or negative. a) 9AC4h b) 78E3h <br>
3. Give the unsigned and signed decimal interpretations of each of the following 16-bit or 8-bit numbers. a) 7FFEh  b) A9h

### Assignment 03
1. Determine the physical address of a memory location given by 0A61:AD90h <br>
2. A memory location has a physical address 3A9B2h. Compute <br> a) The offset address if the segment number is 20FAh <br> b) The segment number if the offset address is A322h

### Assignment 04
1. Write a program to input an uppercase letter and display its corresponding lowercase letter. <br>
2. Write a program to read two decimal digits whose sum is less than 10 and display them and their sum in the next line with appropriate message.

### Assignment 05
1. For each of the following instructions, give the new destination contents and the new settings of CF, SF, ZF, PF and OF. Suppose that the flags are initially 0 in each part of this question <br> a) ADD AX, BX where AX contains 7FFFh and BX contains 0001h <br> b) DEC AL where AL contains 00h <br> c) NEG AL where AL contains 7Fh <br> d) XCHG AX, BX where AX contains 1ABCh and BX contains 712Ah

### Assignment 06
1. Write a program that will prompt the user to enter a hex digit character (0-F), display it on the next line in decimal and ask the user if he or she wants to do it again. If the user types “Y”, the program repeats. If the  user types “N” the program terminates. If the user enters an illegal character prompt the user to try again. <br>
2. Write a program to read two capital letters and display them on the next line in alphabetical order. <br>
3. Write a program that prompts the user to enter a character, and in subsequent lines, prints its ASCII code in binary and the number of 1 bit in its ASCII code. <br>
4. Write a program that prompts the user to type a hex number of four hex digits or less, and outputs it in binary on the next line. If the user enters an illegal character, he or she should be prompted to begin again. Accept only uppercase letters. Your program may ignore any input beyond four characters. <br>
5. Write a program that prompts the user to enter two unsigned hex numbers, 0 to FFFFh, and prints their sum in hex on the next line. If the user enters an illegal character, he or she should be prompted to begin again. Your program should be able to handle the possibility of unsigned overflow. Each input ends with a carriage return. <br>
6. Write a program that prompts the user to enter a string of decimal digits, ending with a carriage return, and prints their sum in hex on the next line. If the user enters an illegal character, he or she should be prompted to begin again.

### Assignment 07
1. Write a program that lets the user type some text, consisting of words separated by blanks, ending with a carriage return, and displays the text in the same word order as entered, but with the letters in each word reversed. <br>
2. Write a program that lets the user type in an algebraic expression, ending with a carriage return, that contains round (parentheses), square, and curly brackets. As the expression is being typed in, the program evaluates each character. If at any point the expression is incorrectly bracketed (too many right brackets or a mismatch between left and right brackets), the program tells the user to start over. After the carriage return is typed, if the expression is correct, the program displays "expression is correct." If not, the program displays "too many left brackets". In both cases, the program asks the user if he or she wants to continue. If the user types 'Y', the program runs again. Your program does not need to store the input string, only check it for correctness.

### Assignment 08
1. Write a program that lets the user enter time in seconds, up to 65535, and outputs the time as hours, minutes, and seconds. <br>
2. Write a program to find the greatest common divisor (GCD) of two integers M and N, according to the following algorithm: <br>
a. Divide M by N, getting quotient Q and remainder R. <br> b. If R = 0 then stop. N is the GCD of M and N. <br> c. If R <> 0 replace M by N, N by R, and repeat step 1

### Assignment 09
1. Suppose the class records are stored as follows <br> `CLASS` <br> `DB   ‘MARY   ALLEN’, 67,45,98,33 `<br>` DB   'SCOTT    BAYLIS’, 70,56,87,44 `<br>` DB   'GEORGE   FRANK', 82,72,89,40  `<br>` DB   'SAM    WONG', 78,76,92,60 `<br> Each name occupies 12 bytes.  Write a program to print the name of each student and his or her average (truncated to an integer) for the four exams.<br>
2. Write a program that uses XLAT to (a) read a line of text, and (b) print it on the next line with all small letters converted to capitals. The input line may contain any characters - small letters, capital letters, digit, characters, punctuation, and so on.

### Assignment 10
1. Write a program that (a) lets the user input a string, (b) prints it forward and backward without punctuation and blanks on successive lines, and (c) decides whether it is a palindrome and prints the conclusion. <br>
2. Write a program that reads a string  STRING, a decimal integer S that represents a position in STRING, a decimal integer N that represents the number of bytes to be removed (both integers between 0 and 80), calls DELETE to remove N bytes at position S, and prints the resulting string.
