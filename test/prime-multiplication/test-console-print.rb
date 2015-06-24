require_relative "../../lib/prime-multiplication/console-printer.rb"
require "test/unit"
 
class TestPrimes < Test::Unit::TestCase

    def setup
        @tenPrimes = [
            2, 3, 5, 7,
            11, 13, 17,
            19, 23, 29
        ]
    end

    def test_calculate_spacing
        printer = ConsolePrinter.new(@tenPrimes)
        assert_equal(3, printer.calculate_spacing)
    end
end

