# Largest prime factor of 600851475143
require 'prime'
number = 600851475143

x = 1
while x < number
  if (number % x == 0)
    puts number
    if (Prime.prime?(x) && x != 1)
      while (number % x == 0)
        number = number / x
      end
    end
  end
  x += 1
end

p number
