n = gets.chomp.to_i
count = 0
result = 'No'
n.times do
  d1, d2 = gets.chomp.split(' ').map {|d| d.to_i}
  count = d1 == d2 ? count + 1 : 0
  if count >= 3
    result = 'Yes'
    break
  end
end
puts result
