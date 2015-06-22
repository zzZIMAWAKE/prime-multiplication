require 'enumerator'

class MultiplyPrimes

	def initialize(primeNumbers)
		@primeNumbers = primeNumbers
	end

	def prepare_primes
		
	end

	def print_primes
		@primeNumbers.each {|n| print ' ', n}
		puts "\n"

		multiples = @primeNumbers.dup
		j = 0
		while j < @primeNumbers.count
			i = 0
			print @primeNumbers[j]
			print ' '
			while i < multiples.length
				print @primeNumbers[j] * multiples[i]
				print ' '
				i += 1
			end
			puts "\n"
			j += 1
		end
	end

end