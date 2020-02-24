thousand_factorical = 2 ** 1000

puts thousand_factorical.to_s.split("").map{|str| str.to_i }.reduce(:+)