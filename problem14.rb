def collatz(number)
  if (number == 1 || number == 0)
    nil
  elsif (number.even?)
    number / 2
  else
    3 * number + 1
  end
end

def collatz_enum(number)
  Enumerator.new do |y|
    loop do
      number = collatz(number)
      y << number
    end
  end
end

max_size = 0
values = Array.new(1000000, 0)
values.each_with_index do |size, index|
  if (max_size < size)
    current_size = 0
    current_collatz = 0
    sequence = collatz_enum(index)
    while (current_collatz && values[current_collatz])
      current_collatz =  sequence.next
      current_size += 1
    end
  end
end
sequence = collatz_enum(13)
