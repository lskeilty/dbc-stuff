require_relative '../roman_numerals'

describe 'converting an Arabic number to a Roman numeral' do
  describe 'old Roman numerals' do
    it 'should convert 1 to I' do
      expect(convert_to_roman(1)).to eq("I")
    end

    it 'should convert 4 to IIII' do
      expect(convert_to_roman(4)).to eq("IIII")
    end
  end

  describe 'modern Roman numerals' do
  end
end
