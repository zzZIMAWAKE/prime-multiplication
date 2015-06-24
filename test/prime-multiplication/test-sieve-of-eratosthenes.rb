require_relative "../../lib/prime-multiplication/sieve-of-eratosthenes.rb"
require "test/unit"
 
class TestPrimes < Test::Unit::TestCase

    def setup
        @tenPrimes = [
            2, 3, 5, 7,
            11, 13, 17,
            19, 23, 29
        ]
    end

    # Assert that equation has not been modified
    def test_ceiling
        x = 0
        while x < 10
          x = rand(1..1000)
          ceiling = x * Math.log(x) + x * Math.log(Math.log(x))
          assert_equal(ceiling, SieveOfEratosthenes.calculate_ceiling(x))
          x += 1
        end
    end
        
    def test_get_primes
        ceiling = SieveOfEratosthenes.calculate_ceiling(10)
        result = SieveOfEratosthenes.get_primes(ceiling, 10)

        assert_equal(10, result.count)
        assert_equal(true, result.kind_of?(Array))
        assert_equal(@tenPrimes, result)
    end
end