require 'split_method'

describe 'splitter' do 
  it 'converts a string into a list of words' do 
    string_a = 'Go there'
    string_b = 'Come here'
    expect(character_splitter(string_a)).to eq(['Go', 'there'])
    expect(character_splitter(string_b)).to eq(['Come', 'here'])
  end
end