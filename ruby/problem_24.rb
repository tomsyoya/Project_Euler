target_index = 1_000_000 - 1
[0,1,2,3,4,5,6,7,8,9].permutation(10).each_with_index{|ary, i|
  puts ary.join("") if i == target_index
}
