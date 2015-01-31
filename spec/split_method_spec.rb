require 'split_method'

xdescribe 'splitter' do 
  it 'converts a string into a list of words' do 
    string_a = '   Go  there     '
    string_b = 'Come here'
    expect(return_words(string_a)).to eq(['Go', 'there'])
    expect(return_words(string_b)).to eq(['Come', 'here'])
  end

  it 'can use any character as a separator' do 
    string_a = 'Go there'
    expect(return_words(string_a, "e")).to eq(['Go th', 'r'])
  end
end

describe 'first_word!' do 
  it 'consumes the first two-letter word in a list of characters' do 
    list = ['G', 'o', ' ', 't', 'h', 'e', 'r', 'e']
    expect(first_word!(list)).to eq('Go')
  end
  it 'removes the first two-letter word from the original list' do 
    list = ['G', 'o', ' ', 't', 'h', 'e', 'r', 'e']
    first_word!(list)
    expect(list).to eq(['t', 'h', 'e', 'r', 'e'])
  end
  it 'consumes the first four-letter word in any list of characters' do 
    list = ["O", "v", "e", "r", " ", "t", "h", "e", "r", "e"]
    expect(first_word!(list)).to eq("Over")
  end
  it 'removes the first four-letter word from the original list' do 
    list = ["O", "v", "e", "r", " ", "t", "h", "e", "r", "e"]
    first_word!(list)
    expect(list).to eq(['t', 'h', 'e', 'r', 'e'])
  end
  it 'consumes the first four-letter word in any list of characters' do 
    list = [" ", " ", "O", "v", "e", "r", " ", "t", "h", "e", "r", "e"]
    expect(first_word!(list)).to eq("Over")
  end
  it 'returns empty string if there are only spaces' do 
    list = [" ", " ", " "]
    expect(first_word!(list)).to eq("")
  end
  it 'returns the first word even if there are no spaces' do 
    list = ["O", "v", "e", "r", "t", "h", "e", "r", "e"]
    expect(first_word!(list)).to eq("Overthere")
  end
end

describe 'remove_leading_spaces!' do 
  it 'does nothing when there is no leading space' do 
    list = ["O", "n"]
    remove_leading_spaces!(list)
    expect(list).to eq(["O", "n"])
  end
  it 'removes leading spaces for a character array' do 
    list = [" ", " ", "O", "v", "e", "r", " ", "t", "h", "e", "r", "e"]
    remove_leading_spaces!(list)
    expect(list).to eq(["O", "v", "e", "r", " ", "t", "h", "e", "r", "e"])
  end
end

