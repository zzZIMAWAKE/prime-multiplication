require_relative 'option-parser.rb'
require_relative 'prime-multiplication/primes.rb'
require_relative 'prime-multiplication/console-printer.rb'
require_relative 'prime-multiplication/sieve-of-eratosthenes.rb'

options = Parser.parse(ARGV)

primes = Primes.new(options.count)

if (options.brute === true)
  prime_numbers = primes.get_primes
else
  ceiling = SieveOfEratosthenes.calculate_ceiling(options.count)
  prime_numbers = SieveOfEratosthenes.get_primes(ceiling, options.count)
end

printer = ConsolePrinter.new(prime_numbers)
printer.begin_print