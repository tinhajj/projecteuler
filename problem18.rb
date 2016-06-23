<<<<<<< HEAD
tree_string = 
"75
=======
triangle = "75
>>>>>>> 7a0e5b579bf177836d88120072cc1bd317f4621b
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
<<<<<<< HEAD

tree = tree_string.split("\n")
tree.map! { |x| x.split(" ") }
tree.map! { |x| x.map! { |y| y.to_i } }

def explore(tree, row, parent_index, max)
  if (!tree[row+2])
    left_value = tree[row][parent_index] + tree[row+1][parent_index]
    right_value = tree[row][parent_index] + tree[row+1][parent_index+1]
    p left_value
    p right_value
  else
    explore(tree, row + 1, parent_index, max)
    explore(tree, row + 1, parent_index+2, max)
  end
end

explore(tree, 0, 1, 0)
=======
>>>>>>> 7a0e5b579bf177836d88120072cc1bd317f4621b
