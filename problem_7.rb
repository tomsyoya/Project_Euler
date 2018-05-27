def get_primes(n)
  primes = (2..n).to_a
  for i in primes
    primes.select!{|num| num % i != 0 || num == i}
  end

  primes
end

num = 2
primes = [num]

target_prime_count = 10001

while primes.count <= target_prime_count
  primes = []
  primes = get_primes(num)
  num *= 2
end

targer_prime_index = target_prime_count - 1

p primes[targer_prime_index]