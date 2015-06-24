class ConsolePrinter

  def initialize(prime_numbers)
    @prime_numbers = prime_numbers
    @text_spacing  = "%#{calculate_spacing}s"
    @digit_spacing = "%#{calculate_spacing}d"
  end

  # calculate spacing based on the size
  #   of the largest number displayed
  #   @return int
  def calculate_spacing
    highestValue = @prime_numbers[-1] ** 2
    return Math.log10(highestValue).to_i + 1
  end

  # print the first row (special case)
  def first_row
    puts "\n"
    printf(@text_spacing, "*")
    print ' '
    i = 0

    while i < @prime_numbers.count
      printf(@digit_spacing, @prime_numbers[i])
      print ' '
      i += 1
    end

    puts "\n"
  end

  # print the multiplication table
  def print_table
    j = 0

    while j < @prime_numbers.count
      i = 0
      printf(@digit_spacing, @prime_numbers[j])
      print ' '

      while i < @prime_numbers.count
        printf(@digit_spacing, (@prime_numbers[j] * @prime_numbers[i]))
        print ' '
        i += 1
      end

      puts "\n"
      j += 1
    end
  end

  # controls the flow of printing
  def begin_print
    self.first_row
    self.print_table
  end
end