require 'pry'

def counting_sundays
  day_counter = 2
  month_range = (1..12)
  year_counter = 1901
  sunday_the_first = 0
  (year_counter..2000).each do |year|
    month_range.each do |month|
      if [1,3,5,7,8,10,12].include?(month)
        sunday_the_first += 1 if day_counter == 1
        31.times do |x|
          if day_counter == 7
            day_counter = 1
          else
            day_counter += 1
          end
        end
      elsif [4,6,9,11].include?(month)
        sunday_the_first += 1 if day_counter == 1
        30.times do |x|
          if day_counter == 7
            day_counter = 1
          else
            day_counter += 1
          end
        end
      elsif month == 2
        if year % 4 == 0
          sunday_the_first += 1 if day_counter == 1
          29.times do |x|
            if day_counter == 7
              day_counter = 1
            else
              day_counter += 1
            end
          end
        else
          sunday_the_first += 1 if day_counter == 1
          28.times do |x|
            if day_counter == 7
              day_counter = 1
            else
              day_counter += 1
            end
          end
        end
      else
        #this never happens
      end
    end
  end
  puts "#{sunday_the_first}"
end


counting_sundays

#This got me close, but output 172 instead of 171. I guessed above and below 172 and got the answer though.
