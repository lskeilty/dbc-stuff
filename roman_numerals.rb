def convert_to_roman(arabic_number, modern = false)
	 roman_array = [
 	[1000, "M"],
 	[900, "CM"], #added 900
 	[500, "D"],
 	[400, "CD"], #added 400
 	[100, "C"],
 	[90, "XC"], #added 90
 	[50, "L"],
 	[40, "XL"], #added 40
 	[10, "X"],
 	[9, "IX"], #added 9
 	[5, "V"],
 	[4, "IV"], #added 4
  [1, "I"],
  ]
	roman_numeral = ""

	if modern == true
		roman_array.each do |arb_arr, rom_arr|
		roman_numeral += rom_arr * (arabic_number / arb_arr)
		arabic_number = arabic_number % arb_arr
		end
	end

	roman_array.each do |arb_num, rom_num|
		roman_numeral += rom_num * (arabic_number / arb_num)
		arabic_number -= arb_num * (arabic_number / arb_num)
	end
roman_numeral
end