

factors = [0,1,2,3,4,5,6,7,8,9]
target_index_number = 1_000_000
lexicographic_permutations = []

loop do
  p factors
  sum_index_number = 0
  for i in factors
    rest_array = factors.select{|num| num != i }
    p target_index_number
    sum_index_number += (2..rest_array.length).to_a.reduce(:*)
    if sum_index_number > target_index_number
      lexicographic_permutations << i
      factors.delete(i)
      factors.sort!
      target_index_number = sum_index_number - target_index_number
      break
    end
  end

  if factors.length == 2
    lexicographic_permutations.concat(factors.sort{|a, b| b <=> a })
    break
  end
end

puts lexicographic_permutations.join("")