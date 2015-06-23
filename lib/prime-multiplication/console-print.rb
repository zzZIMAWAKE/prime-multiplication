class ConsolePrint

    def initialize(primeNumbers)
        @primeNumbers = primeNumbers
        @textspacing  = "%#{calculate_spacing}s"
        @digitspacing = "%#{calculate_spacing}d"
    end

    #calculate spacing based on the size
    #of the largest number displayed
    #@return int
    def calculate_spacing
        highestValue = @primeNumbers[-1] ** 2
        return Math.log10(highestValue).to_i + 1
    end

    #print the first row (special case)
    def first_row
        puts "\n"
        printf(@textspacing, "+")
        print ' '
        i = 0

        while i < @primeNumbers.count
            printf(@digitspacing, @primeNumbers[i])
            print ' '
            i += 1
        end

        puts "\n"
    end

    #print the multiplication table
    def print_table
        j = 0

        while j < @primeNumbers.count
            i = 0
            printf(@digitspacing, @primeNumbers[j])
            print ' '

            while i < @primeNumbers.count
                printf(@digitspacing, (@primeNumbers[j] * @primeNumbers[i]))
                print ' '
                i += 1
            end

            puts "\n"
            j += 1
        end
    end

    #controls the flow of printing
    def begin_print
        self.first_row
        self.print_table
    end
end