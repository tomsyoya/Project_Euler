$number_letters = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "hundred",
  1000 => "onethousand",
}

letter_count_sum = 0

def get_ten_position_letter(num)
  if num > 19 && num % 10 != 0
    $number_letters[num - (num%10)] + $number_letters[num%10]
  else
    $number_letters[num]
  end
end

def get_hundred_position_letter(num)
  if num % 100 != 0
    $number_letters[num/100] + $number_letters[100] + "and" + get_ten_position_letter(num%100)
  else
    $number_letters[num/100] + $number_letters[100]
  end
end

for i in 1..1000
  if i < 100
    letter_count_sum += get_ten_position_letter(i).length
    p get_ten_position_letter(i)
  elsif i < 1000
    letter_count_sum += get_hundred_position_letter(i).length
    p get_hundred_position_letter(i)
  else
    letter_count_sum += $number_letters[i].length
    p $number_letters[i]
  end
end

p letter_count_sum