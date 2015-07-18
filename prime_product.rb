require_relative "./my_prime"

class PrimeProduct

  def initialize(n)
    @n = n
  end

  def product
    prime_numbers.reduce([]) do |matrix, row_number|
      matrix << prime_numbers.collect do |col_number|
        col_number * row_number
      end
    end
  end

  def prime_numbers
    @prime_numbers ||= MyPrime.first @n
  end

end
