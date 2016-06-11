fib_gen = Enumerator.new do |yielder|
  a = 1
  b = 2
  yielder.yield a
  yielder.yield b
  loop do
    c = a + b
    yielder.yield c
    a, b = b, c
  end
end

fib_numbs = []
current_number = 0
while current_number < 4000000
  current_number = fib_gen.next
  fib_numbs << current_number
end

fib_numbs.select! { |x| x % 2 == 0 }
puts fib_numbs.inject(:+)
