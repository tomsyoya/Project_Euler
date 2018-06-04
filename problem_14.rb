def calc_num_by_odd_or_even(num)
  koraz_sequence = []
  while num != 1
    if num % 2 == 0
      num /= 2
    else
      num = (3 * num) + 1
    end
    koraz_sequence << num
  end
  koraz_sequence
end

numbers = (2..999999).to_a.reverse
max_sequence_count = 0
longest_koraz_num = 0

for i in numbers
  sequence_count = calc_num_by_odd_or_even(i).length
  if max_sequence_count < sequence_count
    max_sequence_count = sequence_count
    longest_koraz_num = i
  end
end

p longest_koraz_num