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

# def return_words(string, character = " ")
#   split_character = character
#   string_array = character_splitter(string)
#   current_word = ""
#   word_array = []
#   string_array.each do |char|  
#     if char == split_character 
#       word_array_push(current_word, word_array) 
#       current_word = ""             
#     else current_word += char 
#     end
#   end
#   word_array_push(current_word, word_array)
#   word_array
# end

# def word_array_push(word, array)
#   array.push(word) unless word == ""
# end

def first_word!(chars)
  remove_leading_spaces!(chars)
  return_word = ""
  char = ""
  while char != " " && !chars.empty?
    char = chars.shift 
    return_word += char unless char == " "
  end
  return_word
end

def remove_leading_spaces!(chars)
  char = chars.first
  while char == " " do 
    chars.shift
    char = chars.first
  end
end

