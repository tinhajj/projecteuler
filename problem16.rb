big = 2 ** 1000
sum = 0
big.to_s.chars.each { |x| x = x.to_i; sum += x }
p sum
