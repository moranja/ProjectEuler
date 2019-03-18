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


# def two_sum(abund_nums, limit)
#   sum_of_not_two_abun = 0
#   (1..limit).each do |x|
#     solution = false
#     numbers_less_than_x = abund_nums.select{|num| num < x}
#     numbers_less_than_x.each_with_index do |val_1, index_1|
#       numbers_less_than_x.each_with_index do |val_2, index_2|
#         if val_1 + val_2 == x
#           solution = true
#           break
#         end
#       end
#     end
#     if solution == false
#       sum_of_not_two_abun += x
#       #binding.pry
#     end
#     if x % 1000 == 0
#       #binding.pry
#     end
#   end
#   sum_of_not_two_abun
# end # this was working, but was far too slow

def all_abundant_sums(abund_nums, limit)
  abundant_sums = []
  abund_nums.each do |num_1|
    abund_nums.each do |num_2|
      if num_1 + num_2 > limit
        break
      else
        abundant_sums << (num_1 + num_2)
      end
    end
  end
  abundant_sums.uniq
end


abundant_numbers = is_abundant?(28123)
all_abund_sums = all_abundant_sums(abundant_numbers, 28123)
less_than_limit = (1..28123).to_a
all_non_abund_sums = less_than_limit - all_abund_sums
result = all_non_abund_sums.uniq.inject(:+)

puts result
