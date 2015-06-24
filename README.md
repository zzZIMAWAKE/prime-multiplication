# prime-multiplication
Coding challenge - create a multiplication table of prime numbers

By default this uses the sieve of Eratothenes algorithm to find prime numbers

#To run:
To run simply navigate to your prime-multiplication/lib folder and run:
ruby initialize.rb [--count 1-*] [--brute-force]

[] - is optional
--count sets the limit of prime numbers
--brute-force sets the use of the a brute-force approach to find prime numbers

#To run tests:
Navigate to prime-multiplication/test and run:
ruby unit-tests.rb

#To output when count is >15
It is advised that for counts above 15 you output to text document by typing the following:
ruby initialize.rb --count 16 > filename.txt

This will help somewhat with the formatting, however, large numbers will still
break the formatting.