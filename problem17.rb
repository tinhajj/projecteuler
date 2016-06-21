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
numbers = (1..1000).to_a

# 1 to 10 =
singles = "one two three four five six seven eight nine ten".gsub!(/ /, "")
total += singles.size

# 11 to 20 =
teens = "eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen".gsub!(/ /, "")
total += teens.size

# 20 - 99
single = "one two three four five six seven eight nine".gsub!(/ /, "")
tens = %w{ twenty thirty fourty fifty sixty seventy eighty ninety }
tens.each do |ten|
  total += ten.size * 9 + single.size
end

p total

numbers = "onetwothreefourfivesixseveneightnineteneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteentwentytwentyonetwentytwotwentythreetwentyfourtwentyfivetwentysixtwentyseventwentyeighttwentyninethirtythirtyonethirtytwothirtythreethirtyfourthirtyfivethirtysixthirtyseventhirtyeightthirtyninefortyfortyonefortytwofortythreefortyfourfortyfivefortysixfortysevenfortyeightfortyninefiftyfiftyonefiftytwofiftythreefiftyfourfiftyfivefiftysixfiftysevenfiftyeightfiftyninesixtysixtyonesixtytwosixtythreesixtyfoursixtyfivesixtysixsixtysevensixtyeightsixtynineseventyseventyoneseventytwoseventythreeseventyfourseventyfiveseventysixseventysevenseventyeightseventynineeightyeightyoneeightytwoeightythreeeightyfoureightyfiveeightysixeightyseveneightyeighteightynineninetyninetyoneninetytwoninetythreeninetyfourninetyfiveninetysixninetysevenninetyeightninetynineonehundred".gsub!(/ /, "")
p numbers
