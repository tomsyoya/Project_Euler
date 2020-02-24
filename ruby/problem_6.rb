def sum_of_squares(num)
  (1..num).reduce{|sum, n| sum + (n**2)}
end

def square_of_sum(num)
  (1..num).reduce(:+) ** 2
end

p square_of_sum(100) - sum_of_squares(100)