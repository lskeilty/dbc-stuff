require_relative 'roman_numerals'

#Here's a collection of tests for your to_roman method
#You'll need to add your own tests too!

describe 'to_roman' do
  it 'should convert 1 to I' do
    expect(to_roman(1)).to eq("I")
  end

  it 'should convert 3 to III' do
    expect(to_roman(3)).to eq("III")
  end
end
