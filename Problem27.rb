require 'pry'
require 'prime'

def quad_prime(a_limit, b_limit)
  best = {counter: 0}
  ((-1*a_limit)..a_limit).each do |a|
    Prime.each(b_limit) do |b|
      counter = 0
      x = 0
      started_at_zero = true
      while started_at_zero == true
        n = x * x + a * x + b
        if Prime.prime?(n) && started_at_zero == true
          counter += 1
        else
          started_at_zero = false
          if best[:counter] < counter
            best = {counter: counter, a: a, b: b}
          end
        end
        x +=1
      end
    end
  end
  best[:a]*best[:b]
end

test = quad_prime(999,1000)

Pry.start
