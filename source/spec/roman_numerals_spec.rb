require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'should convert 1 to I' do
      expect(convert_to_roman(1)).to eq("I")
    end

    it 'should convert 3 to III' do
      expect(convert_to_roman(3)).to eq("III")
    end
  end

  describe 'modern Roman numerals' do
  end
end
