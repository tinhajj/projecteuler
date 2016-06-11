sum_square = (1..100).inject(:+) ** 2
square_sum = 0
for x in 1..100
  square_sum += x ** 2
end

puts sum_square - square_sum
