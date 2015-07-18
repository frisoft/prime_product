require_relative "./line_formatter"
require_relative "./prime_product"

class PrimeProductPrinter

  def initialize(n)
    @n = n
  end

  def print(output=STDOUT, formatter=LineFormatter.new)
    prime_product = PrimeProduct.new(@n)
    lines = [formatter.get_line(nil, prime_product.prime_numbers)]
    lines <<  formatter.separator_line(@n + 1)
    prime_product.product.each_with_index do |row, index|
      lines <<  formatter.get_line(prime_product.prime_numbers[index], row)
    end
    output.puts lines.join("\n")+"\n"
  end

end
