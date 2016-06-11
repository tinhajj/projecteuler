#sieve for 10,001st prime

#sieve
#expand

require 'prime'

top_end = 100

range = 1..top_end
possibilities = (1..top_end).to_a

while (10001 > possibilities.length)
  top_end *= 2
  range = 1..top_end
  possibilities = (1..top_end).to_a

  x = 2
  while(x < possibilities.length)
    if ( Prime.prime?(x) )
      possibilities = possibilities[0..x] + possibilities[x+1..-1].select { |y| y % x != 0 }
    end
    x += 1
  end
end

puts possibilities[10001]
