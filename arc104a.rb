a, b = gets.split(' ').map {|n| n.to_i}
x = (a + b) / 2
y = a - x
puts "#{x} #{y}"
