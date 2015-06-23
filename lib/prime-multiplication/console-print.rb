require_relative('multiply-primes')

class ConsolePrint

    def initialize(primeNumbers)
        @primeNumbers = primeNumbers
    end

    def first_row
        puts "\n"
        printf("%3s", "+")
        @primeNumbers.each {|n| printf("%4d", n)}
        puts "\n"
    end

    def print_table
        multiples = @primeNumbers
        j = 0
        while j < @primeNumbers.count
            i = 0
            printf("%3d", @primeNumbers[j])
            print ' '

            while i < @primeNumbers.count
                printf("%3d", (@primeNumbers[j] * @primeNumbers[i]))
                print ' '
                i += 1
            end

            puts "\n"
            j += 1
        end
    end

    def begin_print
        self.first_row
        self.print_table
    end
end