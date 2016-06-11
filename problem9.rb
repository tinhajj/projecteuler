require 'awesome_print'

poss_num = (1..1000).to_a
poss_num.select! { |x| x ** 2 < 1000 }
p poss_num.reverse!

potential = []

poss_num.each.with_index do |x, c_index|
  poss_num[c_index+1..-1].each.with_index do |j, b_index|
    poss_num[b_index+1..-1].each do |z|
      potential << [x, j, z] if Math.sqrt( (x ** 2) / (j ** 2) ) % 1 == 0
    end
  end
end

ap potential[0..3]
