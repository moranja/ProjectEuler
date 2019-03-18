require 'prime'

class Integer
  def all_rotations_prime?
    x = self
    if x.to_s.split('').include?('0')
      return false
    else #checks if any digit is zero, as my rotate_digits method breaks if that's the case, and those won't be a circular prime ever
      digits = x.to_s.length
      digits.times do
        if x.prime?
          #binding.pry
          x = x.rotate_digits
        else
          return false
          break
        end
      end
      true
    end
  end

  def rotate_digits
    x_arr = self.to_s.split('')
    first_digit = x_arr.shift
    x_arr << first_digit
    x_arr.join.to_i
  end
end

all_r_primes = []
(1..1000000).each do |x|
  if x.all_rotations_prime?
    all_r_primes << x
  end
end
puts all_r_primes.size
