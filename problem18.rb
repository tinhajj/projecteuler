triangle = "3
7 4
2 4 6
8 5 9 3"

tree = triangle.split("\n")
tree.map! { |x| x.split(" ") }
tree.map! { |x| x.map! { |y| y.to_i } }

def explore(tree, row, position)
  if (!tree[row+2])
    left_value = tree[row+1][position]
    right_value = tree[row+1][position + 1]

    p left_value
    p right_value
    p "====="
  else
    explore(tree, row + 1, position)
    explore(tree, row + 1, position + 1)
  end
end

explore(tree, 0, 0)
