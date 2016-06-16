# not sure why I need this wrapped but idgaf
def collatz_wrapper ( number )
  collatz_array = collatz ( number )
  if ( collatz_array.size == 1 )
    collatz_array
  else
    [number] + collatz_array[0..-2]
  end
end

# this returns double 1 at the end of the array for some reason
def collatz ( number )
  if ( number == 1)
    return [1]
  elsif ( number.even? )
    return [number / 2, collatz( number/ 2 )].flatten
  elsif ( number.odd? )
    return [3 * number + 1, collatz(3 * number  + 1)].flatten
  end
end

onemil = (1..1000000).to_a

counter = 1
current_max = 0
while ( counter < onemil.size )
  current_sequence = collatz_wrapper( onemil[counter] )
  onemil.reject!{ |x| current_sequence.include?(x) }
  p onemil.size
  counter += 1
end

#Collatz sequence are graphs
