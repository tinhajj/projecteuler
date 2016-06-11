thousand = (1...1000).to_a
thousand.select! { |x| x % 3 == 0 || x % 5 == 0 }
sum = thousand.inject(:+)
p sum
