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

best_num = 0
values = Array.new(1000000, false)
values.each_with_index do |tested, index|
  if (!tested)
    sequence = collatz_enum(index)
    current = collatz_enum.next
    while (current)
      values[index]
      current = collatz_enum.next
    end
  end
end
