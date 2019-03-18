require 'pry'


def is_abundant? (limit)
  abundant_numbers =[]
  (1...limit).each do |x|
    s_of_d = (1...x).select{|y| x % y == 0}.inject(:+)
    if s_of_d != nil && s_of_d > x
      abundant_numbers << x
    end
  end
  abundant_numbers
end


def two_sum(numbers, limit)
  sum_of_not_two_abun = 0
  (1..limit).each do |x|
    solution = false
    numbers_less_than_x = numbers.select{|num| num < x}
    numbers_less_than_x.each_with_index do |val_1, index_1|
      numbers_less_than_x.each_with_index do |val_2, index_2|
        if val_1 + val_2 == x
          solution = true
          break
        end
      end
    end
    if solution == false
      sum_of_not_two_abun += x
      #binding.pry
    end
    if x % 1000 == 0
      #binding.pry
    end
  end
  sum_of_not_two_abun
end

abundant_numbers = is_abundant?(28123)
result = two_sum(abundant_numbers, 28123)

# It seems like its working, but it's not optimal at all...

Pry.start
