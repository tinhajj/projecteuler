upper_limit = 2000000
primes = []
for x in 2..upper_limit
  primes[x] = true
end

root_n = Math.sqrt(upper_limit).ceil

for i in 2..root_n
  if primes[i] == true
    j = i ** 2
    multiple = 0
    while ( j < upper_limit )
      primes[j] = false
      j = j + ( multiple * i )
      multiple += 1
    end
  end
end

actual_primes = []
primes.each.with_index do |bool, index|
  if ( bool )
    actual_primes << index
  end
end

puts actual_primes.inject(:+)
