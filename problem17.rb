# 1 = one
# 2 = two
# 3 = three
# 4 = four
# 5 = five
# 6 = six
# 7 = seven
# 8 = eight
# 9 = nine
# 10 = ten
# 11 = eleven
# 12 = twelve
# 13 = thirteen
# 14 = fourteen
# 15 = fifteen
# 16 = sixteen
# 17 = seventeen
# 18 = eighteen
# 19 = nineteen
#
# 20 = twenty
# 30 = thirty
# 40 = fourty
# 50 = fifty
# 60 = sixty
# 70 = seventy
# 80 = eighty
# 90 = ninety
# 100 = one hundred
# 1000 = one thousand

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
