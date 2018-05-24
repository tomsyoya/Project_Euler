prime = 600_851_475_143

(2..Math.sqrt(prime).to_i).each do |num|
  break if num >= prime
  prime /= num while (prime > num && prime % num == 0)
end


p prime