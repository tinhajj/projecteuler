poss_num = (1..1000).to_a

a = 0
b = 0
c = 0

x = 0

# m maximum is 32

while (a + b + c < 1000)
    m = x + 24
    n = x
    a = m ** 2 - n ** 2
    b = 2*m*n
    c = m ** 2 + n ** 2

    puts a + b + c
    x += 1
end
