# not sure why I need this wrapped but idgaf
def collatz_wrapper ( number )
  collatz_array = collatz ( number )
  if ( collatz_array.size == 1 )
    return collatz_array
  else
    collatz_array[0..-2]
  end
end

# this returns double 1 at the end of the array for some reason
def collatz ( number )
  if ( number == 1)
    return [1]
  elsif ( number.even? )
    return [number / 2, collatz( number/ 2)].flatten
  elsif ( number.odd? )
    return [3 * number + 1, collatz(3 * number  + 1)].flatten
  end
end

p collatz_wrapper( 1 )

onemil = 1..1000000

counter = 0
current_max = 0
while ( counter < onemil.size )
  collatz_wrapper( counter )
  current_sequence = collatz_wrapper( onemil[counter] )
  onemil.reject!{ |x| current_sequence.include?(x) }
  counter += 1
end
