def character_splitter(string)
  string_array = []
  index = string.length
  word_index = 0
  index.times do 
    string_array.push(string[word_index])
    word_index += 1
  end
  string_array
end

def return_first_word(string_array)
  first_word = ""
  word_array = []
  string_array.each do |character|
    word_array.push(first_word) if character == " "
    first_word += character 
  end
  word_array
end

def word_splitter(phrase)
  word_array = []
  split_letters = character_splitter(phrase)
  first_word = return_first_word(split_letters)
  word_array.push(first_word)
end