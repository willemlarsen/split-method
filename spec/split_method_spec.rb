require 'split_method'

describe 'splitter' do 
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
  it 'consumes the first word in a list of characters' do 
    list = ['G', 'o', ' ', 't', 'h', 'e', 'r', 'e']
    expect(first_word!(list)).to eq('Go')
  end
  it 'removes the first word from the original list' do 
    list = ['G', 'o', ' ', 't', 'h', 'e', 'r', 'e']
    first_word!(list)
    expect(list).to eq(['t', 'h', 'e', 'r', 'e'])
  end
end


