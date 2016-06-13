poss_num = (1..998).to_a

# a + b + c = 1000
# a = 1000 - b - c

for m in 1..1000
	for delta in 1..1000
		n = m + delta
		c = n ** 2 + m ** 2
		next if c > 1000
		a = n ** 2 - m ** 2
		b = 2 * n * m
		puts "#{a * b * c}" if a + b + c == 1000
	end
end
