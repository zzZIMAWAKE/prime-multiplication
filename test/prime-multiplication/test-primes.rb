require_relative "../../lib/prime-multiplication/primes.rb"
require "test/unit"
 
class TestPrimes < Test::Unit::TestCase

    def setup
        @tenPrimes = [
            2, 3, 5, 7,
            11, 13, 17,
            19, 23, 29
        ]
    end
    #test all methods within primes
    #returns array of correct size
    def test_primes
        primes = Primes.new(10)
        result = primes.prepare_primes
        assert_equal(10, result.count)
        assert_equal(true, result.kind_of?(Array))
        assert_equal(@tenPrimes, result)
    end
end