def is_pythagoras_number?(x, y ,z)
  ((x ** 2) + (y ** 2) == (z ** 2))
end


for a in 1..1000
  for b in a+1..1000
    c = 1000 - (a+b)
    if b < c && is_pythagoras_number?(a, b, c)
      p a*b*c
    end
  end
end