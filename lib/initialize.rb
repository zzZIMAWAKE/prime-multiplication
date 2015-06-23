require_relative 'option-parser.rb'
require_relative 'prime-multiplication/primes.rb'
require_relative 'prime-multiplication/console-print.rb'

options = Parser.parse(ARGV)

primes = Primes.new(options.count)
primeNumbers = primes.prepare_primes

print = ConsolePrint.new(primeNumbers)
print.begin_print