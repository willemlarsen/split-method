require 'split_method'

describe 'splitter' do 
  it 'converts a string into an list of words' do 
    string_a = 'Go there'
    string_b = 'Come here'
    expect(splitter(string_a)).to eq(['Go', 'there'])
    expect(splitter(string_b)).to eq(['Come', 'here'])

  end
end