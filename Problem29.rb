array = []
(2..100).each do |a|
  (2..100).each do |b|
    array << a**b
  end
end
puts array.uniq.size

array = []
(2..100).each {|a| (2..100).each {|b| array << a**b}}
puts array.uniq.size
