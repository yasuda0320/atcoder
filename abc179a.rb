s = gets.chomp
puts(s + (s.end_with?('s') ? 'es' : 's'))
