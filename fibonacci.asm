# fibonacci.asm program
# CMPSC 64, (c) 2025, Z.Matni
#
#    unsigned int n, f1 = 1, f2 = 1, i = 2, nextfib;
#    cout << "Enter a number:\n";
#    cin >> n;
#    if (n > 1) {
#        cout << "The first " << n << " numbers in the Fibonacci series are:\n";
#        cout << f1 << " " << f2;
#        while (i < n) {
#            nextfib = f1 + f2;
#            f1 = f2;
#            f2 = nextfib;
#            cout << " " << nextfib;
#            i++;
#        }
#    }
#   cout << endl;

.data
	prompt:     .asciiz "Enter a number:\n"
    first:      .asciiz "The first "
    numbers:    .asciiz " numbers in the Fibonacci series are:\n"
	spacech:    .asciiz " "
    newline:    .asciiz "\n"
	
.text
main:
# TODO: Follow the comments below, and the assignment description, 
#       as guides for how to write this assembly program.


# Print the prompt and get user input
	
# Initialize all registers needed in the program (as appropriate)

# if (exit conditions are met) then go to exit
# otherwise:
    # print "The first " n " numbers in the Fibonacci series are:\n"
    # print f1 " " f2

    # while loop:

exit:
# print newline

# quit program
