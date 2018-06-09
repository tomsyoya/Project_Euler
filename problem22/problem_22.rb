alphabets = ("A".."Z").to_a

total_score = 0
File.foreach('names.txt') do |line|
  line.gsub(/"/, '').split(",").sort.each_with_index {|word, i|
    word_score_sum = 0
    word.each_char{|c| word_score_sum += (alphabets.index(c) + 1)}
    total_score += word_score_sum * (i+1)
  }
end

p total_score