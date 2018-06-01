prime_factors = (2..Math.sqrt(2_000_000)).to_a

for i in prime_factors
  prime_factors.select!{|num| num % i != 0 || num == i}
end

primes = []

for num in ((prime_factors.last + 1)..2_000_000)
  primes << num unless prime_factors.find{|factor| num % factor == 0}
end

p primes.concat(prime_factors).sort.uniq.reduce(:+)
