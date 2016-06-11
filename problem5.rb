set = [5, 7, 11, 13, 17, 19]
set << 2**4
set << 3**2
cap = set.inject(:*)
puts cap
