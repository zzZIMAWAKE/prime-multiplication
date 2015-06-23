require_relative 'option-parser.rb'
require_relative 'prime-multiplication/prepare-prime.rb'
require_relative 'prime-multiplication/console-print.rb'

options = Parser.parse(ARGV)

primes = PreparePrime.new(options.count)
primeNumbers = primes.prepare_primes

print = ConsolePrint.new(primeNumbers)
print.begin_print