require 'pry'
f = File.read("p022_names.txt")
f_a = f.split(",")
f_a.map do |name|
  name[0] = '' && name[-1] = ''
end
alph = ('A'..'Z').to_a
sorted = f_a.sort
total_name_score = 0
sorted.each do |name|
  name_total = 0
  name.each_char do |letter|
    name_total += (alph.index(letter)+1)
  end
  name_score = (sorted.index(name)+1)*name_total
  total_name_score += name_score
end

puts total_name_score
