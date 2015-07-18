class MyPrime

  MAX_PRIME_NUMBER = 841

  def self.first(n)
    booleans = Array.new(MAX_PRIME_NUMBER){true}
    (2..Math.sqrt(MAX_PRIME_NUMBER).to_i).collect do |i|
      if booleans[i]
        j = i*i
        while j <= MAX_PRIME_NUMBER
          booleans[j] = false
          j += i
        end
      end
      booleans[i] ? i : nil
    end.compact.first(n)
  end

end
