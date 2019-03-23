require 'prime'
require 'pry'

def n_digit_array (n)
  array = []
  counter = 1
  n.times do
    array << counter.to_s
    counter += 1
  end
  return array
end

largest_pandigital_prime = 2
start = 7654321 #impossible for an 8 or 9 digit pandigital number to be prime, so start here and go down
while true
  x = start
  x_pandigit = x.to_s.split('').sort
  x_digits = x.to_s.length
  if x.prime?
    if x_pandigit == n_digit_array(x_digits)
      largest_pandigital_prime = x
      break
    end
  end
  start -= 1
end

puts largest_pandigital_prime
