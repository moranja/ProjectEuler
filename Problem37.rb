require 'prime'

class Integer
  def is_truncatable_prime?
    x = self
    digits = x.to_s.length
    digits.times do
      if !x.prime?
        return false
      else
        x = x.to_s.split('')
        x.shift
        x = x.join.to_i
      end
    end
    x = self
    digits.times do
      if !x.prime?
        return false
      else
        x = x.to_s.split('')
        x.pop
        x = x.join.to_i
      end
    end
    true
  end
end

truncatable_primes = []

x = 11
until truncatable_primes.size == 11
  if x.is_truncatable_prime?
    truncatable_primes << x
  end
  x += 1
end

puts truncatable_primes.inject(:+)
