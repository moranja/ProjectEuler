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

limit = 50
lychrel_numbers = []

(1...10000).each do |x|
  lychrel = TRUE
  limit.times do
    x += x.reverse
    if x.palindrome? == TRUE
      lychrel = FALSE
      break
    end
  end
  lychrel_numbers.push(x) if lychrel == TRUE
end

print lychrel_numbers.size
