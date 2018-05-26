
divisors = (2..20).to_a

min_dividable_num = 20

while divisors.any?{|n| min_dividable_num % n != 0}
  min_dividable_num += 1
end

p min_dividable_num
