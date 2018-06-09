def get_primes(n)
  primes = (2..n).to_a
  for i in primes
    primes.select!{|num| num % i != 0 || num == i}
  end

  primes
end

def get_divisors_sum(num)
  divisors = []
  for i in 1..(Math.sqrt(num).to_i)
    divisors << i if num % i == 0
  end

  for i in divisors.reverse
    divisor = num / i
    divisors << divisor if !divisors.include?(divisor)
  end

  divisors.delete(num)
  divisors.sum
end

primes = get_primes(10000)
amicable_number_list = []
amicable_number_sum = 0

9999.downto(2){|num|
  next if primes.include?(num) || amicable_number_list.include?(num)

  divisors_sum = get_divisors_sum(num)
  divisors_sum2 = get_divisors_sum(divisors_sum)

  if num == divisors_sum2 && divisors_sum != divisors_sum2
    amicable_number_sum += divisors_sum + divisors_sum2
    amicable_number_list << divisors_sum
  end
}

p amicable_number_sum
