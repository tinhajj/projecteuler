t1 = Time.now

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

def explore(sequence, hash, index, size)
  if (index == nil)
    size
  elsif (hash[index] != 0)
    size = size + hash[index]
  else
    current_number = sequence.next
    total_size = explore(sequence, hash, current_number, size + 1)
    hash[index] = total_size - size
    total_size
  end
end

onemil = Hash.new(0)

1.upto(1000000) do |x|
  sequence = collatz_enum(x)
  explore(sequence, onemil, x, 0)
end

max = 0
max_index = 1

onemil.each do |key, value|
  if (key < 1000000)
    max_index, max = key, value if max < value
  end
end

p max
p max_index

t2 = Time.now
p t2 - t1
