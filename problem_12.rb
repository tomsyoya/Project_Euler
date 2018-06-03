def get_trianguler_number(num)
  (num * (num + 1)) / 2
end

def get_divisors(num)
  divisors = [1]
  for i in 2..(Math.sqrt(num).to_i + 1)
    divisors << i if num % i == 0
  end

  for i in divisors.reverse
    divisor = num / i
    divisors << divisor if !divisors.include?(divisor)
  end
  divisors
end

number = 1
trianguler_number = 0
loop do
  trianguler_number = get_trianguler_number(number)
  divisors = get_divisors(trianguler_number)

p divisors
  break if divisors.length > 500

  number += 1
end

p trianguler_number