def splitter(words)
  words_array = []
  index = words.length
  word_index = 0
  index.times do 
    words_array.push(words[word_index])
    word_index += 1
  end
  words_array
end