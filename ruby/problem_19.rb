def is_leap_year?(year)
  year % 4 == 0 && !(year % 400 != 0 && year % 100 == 0)
end

week = ["Sunday", "Monday", "Tuesday", "Wendesday", "Thursday", "Friday", "Saturday"]
day_of_months = {
  1 => 31,
  2 => 28,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31,
}

day_of_week_index = 1
first_day_is_sunday = 0

for year in 1900..2000
  if is_leap_year?(year)
    day_of_months[2] = 29
  else
    day_of_months[2] = 28
  end

  for month in 1..12
    for date in 1..day_of_months[month]
      first_day_is_sunday += 1 if date == 1 && week[day_of_week_index] == "Sunday" && year != 1900

      day_of_week_index += 1
      day_of_week_index -= week.length if day_of_week_index > 6
    end
  end
end

p first_day_is_sunday