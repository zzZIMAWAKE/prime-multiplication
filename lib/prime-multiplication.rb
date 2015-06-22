require_relative 'initialize.rb'
require_relative 'prime-multiplication/prepare-prime.rb'
require_relative 'prime-multiplication/multiply-primes.rb'

options = Parser.parse(ARGV)

primes = PreparePrime.new(options.count)
primeNumbers = primes.prepare_primes

multiply = MultiplyPrimes.new(primeNumbers)
multiply.print_primes