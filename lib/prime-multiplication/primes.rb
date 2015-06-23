class Primes

    def initialize(limit)
        @ceiling
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

    #rough estimate of the range we will need
    #for the set limit
    def calculate_ceiling
        @ceiling = @limit * Math.log(@limit) + @limit * Math.log(Math.log(@limit))

    end

    def sieve_of_eratothenes
        primesArray = []
        for i in 0..@ceiling
            primesArray[i] = i+2
        end

        index = 0

        #continue until primesArrays value^2 is >= the ceiling
        while primesArray[index]**2 <= primesArray.last
            #will be used to divide each element remaining in the array
            prime = primesArray[index]
            #select only the numbers that were not divisible or were equal to our divisor
            #as for the divisor to remain, it has to be prime
            primesArray = primesArray.select { |x| x == prime || x%prime != 0 }
            index += 1
        end

        return primesArray[0..@limit-1]
    end
end