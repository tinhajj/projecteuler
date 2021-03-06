#The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
#Let us list the factors of the first seven triangle numbers:
#
# 1: 1
# 3: 1,3
# 6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28
#We can see that 28 is the first triangle number to have over five divisors.
#
#What is the value of the first triangle number to have over five hundred divisors?
require 'prime'

triangle_numbers = Enumerator.new do |yielder|
  current_nat = 1
  triangle = 1
  loop do
    yielder.yield triangle
    current_nat += 1
    triangle = triangle + current_nat
  end
end

num_divisors = 0
while ( num_divisors < 500 )
  current_triangle = triangle_numbers.next
  exponents = Prime.prime_division(current_triangle).map { |x| x[1] } # Get exponents of each prime factor
  exponents.map! { |x| x + 1 }
  num_divisors = exponents.inject(1, :*)
end

puts current_triangle
