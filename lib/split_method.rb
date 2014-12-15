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

def return_words(string, character = " ")
  split_character = character
  string_array = character_splitter(string)
  current_word = ""
  word_array = []
  string_array.each do |character|  
    if character == split_character 
      word_array_push(current_word, word_array) 
      current_word = ""             
    else current_word += character  
    end
  end
  word_array_push(current_word, word_array)
  word_array
end

def word_array_push(word, array)
  array.push(word) unless word == ""
end

def first_word!(chars)
  current_char = nil
  word = ""
  while current_char != " "
    current_char = chars.shift
    if current_char != " "
      word += current_char
    else return word
    end
  end
end


