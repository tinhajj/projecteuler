total = 0

# 1 to 10 =
singles = "one two three four five six seven eight nine ten".gsub!(/ /, "")
total += singles.size

# 11 to 20 =
teens = "eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen".gsub!(/ /, "")
total += teens.size

# 20 - 99
single = "one two three four five six seven eight nine".gsub!(/ /, "")
tens = %w{ twenty thirty forty fifty sixty seventy eighty ninety }
tens.each do |ten|
  tens_size = (ten.size * 10 + single.size)
  total += tens_size
end

under_100 = total

# 100 - 999
hundreds = %w{ onehundred twohundred threehundred fourhundred fivehundred sixhundred sevenhundred eighthundred ninehundred }

hundreds.each do |hundred|
	hundred_size = hundred.size * 100 + "and".size * 99 + under_100
	total += hundred_size
end

total += "onethousand".size

p total
