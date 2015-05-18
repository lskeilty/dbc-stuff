require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  it 'should convert 1 to I' do
    expect(to_roman(1)).to eq("I")
  end

  it 'should convert 3 to III' do
    expect(to_roman(3)).to eq("III")
  end
end
