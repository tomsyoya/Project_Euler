target_digits = 1000
fibonnaccies = [1, 1]

fibonnaccies.each_with_index{|val, i|
  break if fibonnaccies.last.to_s.length == target_digits
  fibonnaccies << val + fibonnaccies[i+1]
}

puts fibonnaccies.length