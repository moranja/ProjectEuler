class Integer
  def reverse
    self.to_s.reverse.to_i
  end

  def palindrome?
    if self.to_s == self.to_s.reverse
      return TRUE
    else
      return FALSE
    end
  end
end

def decimal_palindromes(limit)
  palindromes = []
  (1..limit).each do |x|
    if x.palindrome?
      palindromes << x
    end
  end
  palindromes
end

def binary_palindromes(decimal_palindromes_array)]
  decimal_palindromes_array.select {|x| x.to_s(2).to_i.palindrome?}.inject(:+)
end

dec_palindromes = decimal_palindromes(1000000)
puts binary_palindromes(dec_palindromes)
