class Primes

	def initialize(limit)
		@count = 2
		@limit = limit
		@primeNumbers = []
	end

	#populate array of primes up to the user
	#specified limit
	#@return array
	def prepare_primes
		j = 0

		while j < @limit 
			primeNumber = is_prime
			if primeNumber
				@primeNumbers.push(primeNumber)
				j += 1
			end
			@count += 1
		end

		return @primeNumbers
	end

	#check if a number is prime
	#@return boolean
	def is_prime
		prime = true
		i = 2

		while i < @count

			if @count % i === 0
				prime = false
			end

			if @count === 2
				prime = true
			end

			i += 1
		end

		if prime
			return @count
		end
	end
end
