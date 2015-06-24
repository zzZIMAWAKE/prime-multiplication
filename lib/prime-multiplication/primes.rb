class Primes

  def initialize(limit)
    @count = 2
    @limit = limit
    @prime_numbers = []
  end

  # populate array of primes up to the user
  #   specified limit
  #   @return array
  def get_primes
    j = 0

    while j < @limit 
      prime_number = is_prime
      if prime_number
        @prime_numbers.push(prime_number)
        j += 1
      end
      @count += 1
    end

    return @prime_numbers
  end

  # check if a number is prime
  #   @return boolean
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