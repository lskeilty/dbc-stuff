def convert_to_roman(arabic_number, modern = false)
	roman_numeral = ""
	if arabic_number >= 1000
		roman_numeral+="M"*(arabic_number/1000)
		arabic_number = arabic_number % 1000
	end
	if arabic_number >= 500
		if arabic_number >= 900 && modern == true
			roman_numeral += "CM"
			arabic_number = arabic_number - 900
		else
			roman_numeral+="D"*(arabic_number/500)
			arabic_number = arabic_number % 500
		end

		roman_numeral+="D"*(arabic_number/500)
		arabic_number = arabic_number % 500
	end
	if arabic_number >= 100
		if arabic_number >= 400 && modern == true
			roman_numeral += "CD"
			arabic_number = arabic_number - 400
		else
			roman_numeral+="C"*(arabic_number/100)
			arabic_number = arabic_number % 100
		end
	end
	if arabic_number >= 50
		if arabic_number >= 90 && modern == true
			roman_numeral += "XC"
			arabic_number = arabic_number - 90
		else
			roman_numeral+="L"*(arabic_number/50)
			arabic_number = arabic_number % 50
		end
	end
	if arabic_number >= 10
		if arabic_number >= 40 && modern == true
			roman_numeral += "XL"
			arabic_number = arabic_number - 40
		else
			roman_numeral+="X"*(arabic_number/10)
			arabic_number = arabic_number % 10
		end
	end
	if arabic_number >= 5
		if arabic_number == 9 && modern == true
			roman_numeral += "IX"
			arabic_number = arabic_number - 9
		else
			roman_numeral+="V"*(arabic_number/5)
			arabic_number = arabic_number % 5
		end
	end
	if arabic_number == 4 && modern == true
		roman_numeral += "IV"
	else
		roman_numeral += "I"*arabic_number
	end
	roman_numeral
end
