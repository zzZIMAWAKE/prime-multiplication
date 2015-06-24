require_relative 'primes.rb'

class SieveOfEratosthenes

  # rough estimate of the range we will need
  #   for the set limit
  def self.calculate_ceiling(limit)
    return limit * Math.log(limit) + limit * Math.log(Math.log(limit))
  end

  def self.get_primes(count, limit)
    primes_array = []
    for i in 0..count
      primes_array[i] = i+2
    end

    index = 0

    # continue until primes_arrays value^2 is >= the ceiling
    while primes_array[index]**2 <= primes_array.last
      # will be used to divide each element remaining in the array
      prime = primes_array[index]
      # select only the numbers that were not divisible or were equal to our divisor
      #   as for the divisor to remain, it has to be prime
      primes_array = primes_array.select { |x| x == prime || x%prime != 0 }
      index += 1
    end

    return primes_array[0..limit-1]
  end
end