
numbers = (100..999).to_a.reverse
palindromes = []
numbers.each do |num|
  palindromes.concat(numbers.map{|n| n*num }.select{|x| x.to_s == x.to_s.reverse }).uniq
end

p palindromes.max