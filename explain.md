###Release 0 : Translate to plain English.


Add an explain.md file to the repo and in this file, write two or three sentences that explain what this code does. Pretend that you're writing this for someone who knows nothing about computers.

This code essentially takes in normal arabic numbers (0-9) and will translate the numbers into Roman Numerals. It does this by going down a list of numbers 1000-1 and assigning their roman counterpart.

###Release 1 : Translate to pseudocode_______

Write pseudocode that clearly defines the steps. Add the psuedocode below your English explanation in explain.md.

Create a method called convert_to_roman that has 2 parameters, arabic number(0-9) and modern assigned to a boolean.
  set our roman numeral to an empty string
  IF arabic_number(parameter) is GREATER THAN OR EQUAL to 1000
    an M is added to the roman_numeral variable empty string MULTIPLIED by the arabic_number DIVIDED by 1000
    the arabic_number is set to EQUAL arabic_number MODULO 1000 (so the process repeats with the leftover amount)
  END
  IF arabic_number is GREATER OR EQUAL to 500
    IF arabic_number is GREATER OR EQUAL to 900 AND modern(parameter) is TRUE
      CM is ADDED to our roman_number string
      arabic_number becomes arabic_number MINUS 900
    ELSE
      D gets added to the roman_numeral string MULTIPLIED by arabic_number DIVIDED by 500
    END
  D gets added to the roman_numeral string MULTIPLIED by arabic_number DIVIDED by 500
  END

  IF arabic_number is GREATER OR EQUAL to 100
    IF arabic_number is GREATER OR EQUAL TO 400 AND modern is TRUE
      add CD to roman_numeral string
      arabic_number becomes arabic_number - 400
    ELSE
      add C to the roman_numeral string MULTIPLIED by arabic_number DIVIDED by 100
    END
  END

  IF arabic_number is GREATER OR EQUAL to 50
    IF arabic_number is GREATER OR EQUAL to 90 AND modern is TRUE
      XC gets added to roman_numeral
      arabic_number becomes arabic_number MINUS 90
    ELSE
      L gets added to roman_numeral MULTIPLIED by arabic_number DIVIDED by 50
      arabic_number becomes arabic_number MODULO 50
    END
  END

  IF arabic_number is GREATER OR EQUAL to 10
    IF arabic_number is GREATER OR EQUAL to 40 and modern evaluates to TRUE
      XL is added to roman_numeral
      arabic_number becomes arabic_number MODULO 10
    END
  END

  IF arabic_number is GREATER OR EQUAL to 5
    IF arabic_number EQUALS 9 AND modern evaluates to TRUE
      IX gets added to roman_numeral
      arabic_number becomes arabic_number - 9
    ELSE
      V is added to roman_number MULTIPLIED by arabic_number DIVIDED by 5
      arabic_number becomes arabic_number MODULO 5
    END
  END

  IF arabic_number EQUALS 4 AND modern evaluates to TRUE
    IV gets added to roman_numeral
  ELSE
    I is added to roman_numeral times arabic_number
  END
  return roman_numeral
END

###Release 2 : Test the code_________________

Add at least 3 simple tests to the code with a comment above each stating what they are testing. Run the code and make sure these tests pass.

Tested 49, 94, and 499 = all pass

###Release 3 : Refactor_____________________

Refactor the code. Make at least two significant improvements in the code itself, and in the explain.md file, add a section called #Refactor where you explain how you are refactoring the code and why.

Make sure the code still passes your tests.

Added an array key of the arabic numbers to symbols then had a loop go through and check each number in the array, using the modulo to keep checking the remainder against the array.
18 tests pass. I believe this code is a little more DRY and easier to take in.