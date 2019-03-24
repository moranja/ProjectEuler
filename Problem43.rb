require 'pry'

class Integer
  def is_pandigital?
    digits = self.to_s.length
    check = self.to_s.split('').sort
    array = []
    counter = 0
    digits.times do
      array << counter.to_s
      counter += 1
    end
    if array == check
      return true
    else
      return false
    end
  end
end

def subset_check(pandigital, a, b, c)
  subset_array = []
  pandigital_array = pandigital.to_s.split('')
  subset_array << pandigital_array[a-1]
  subset_array << pandigital_array[b-1]
  subset_array << pandigital_array[c-1]
  subset = subset_array.join.to_i
end


sum = 0
(1023456789..9876543210).each do |x|
  if x.is_pandigital?
    if subset_check(x, 8, 9, 10) % 17 == 0
      if subset_check(x, 7, 8 ,9) % 13 == 0
        if subset_check(x, 6, 7, 8) % 11 == 0
          if subset_check(x, 5, 6, 7) % 7 == 0
            if subset_check(x, 4, 5, 6) % 5 == 0
              if subset_check(x, 3, 4, 5) % 3 == 0
                if subset_check(x, 2, 3, 4) % 2 == 0
                  binding.pry
                sum += x
                end
              end
            end
          end
        end
      end
    end
  end
end

puts sum

#slow but working, needs to be optimized
