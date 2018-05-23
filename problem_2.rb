fibonaccies = [1, 1]

loop do
  break if fibonaccies.max >= 4_000_000
  fibonaccies << fibonaccies.last + fibonaccies[fibonaccies.index(fibonaccies.last) - 1]
end

p fibonaccies.select{|num| num % 2 == 0 && num < 4_000_000 }.sum