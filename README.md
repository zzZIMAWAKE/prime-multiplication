# prime-multiplication
Coding challenge - create a multiplication table of prime numbers

By default this uses the sieve of Eratothenes algorithm to find prime numbers
You can set it to use a brute force approach but adding --brute-force when running
the script

#To run:
To run simply navigate to your prime-multiplication/lib folder and type:
ruby initialize.rb [--count <number of primes>]

[] - is optional

#To run tests:
Navigate to prime-multiplication/test and type:
ruby unit-tests.rb

#To output when count is >15
It is advised that for counts above 15 you output to text document by typing the following:
ruby initialize.rb --count 16 > filename.txt

This will help somewhat with the formatting, however, large numbers will still
break the formatting.