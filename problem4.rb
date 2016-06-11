def isPalindrome?(test)
  test = test.to_s
  return test == test.reverse
end

max = 0
for x in 100..999
  for y in x..999
    if (isPalindrome? (x * y))
      if ( ( x * y ) > max )
        max = x * y
      end
    end
  end
end

p max
