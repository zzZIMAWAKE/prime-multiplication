require_relative 'option-parser.rb'
require_relative 'prime-multiplication/primes.rb'
require_relative 'prime-multiplication/console-print.rb'

options = Parser.parse(ARGV)

primes = Primes.new(options.count)

if (options.brute === true)
    primeNumbers = primes.prepare_primes
else
    primes.calculate_ceiling
    primeNumbers = primes.sieve_of_eratothenes
end

print = ConsolePrint.new(primeNumbers)
print.begin_print