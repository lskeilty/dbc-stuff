# Roman Numerals

##Summary

We're going to write a method that converts an integer to its Roman numeral equivalent. In other words, if we give our method the Arabic number 476, our method will return the Roman numeral CDLXXVI.

Determining how to take any number (e.g., 1, 58, 1948, etc.) and convert it into its Roman numeral equivalent is our main focus.  But, in solving this problem, we'll have the opportunity to practice developing with a test-first approach.  And, as always, we should pay attention to the quality of the code that we write.  Are we writing methods that do only one thing?  Is our code DRY—as in *don't repeat yourself*? Are we giving our variables descriptive names?  We need to be very deliberate with our code to make it as easy to read as possible; make intentional decisions.

### Test-first Approach
At Dev Bootcamp we take a test-driven approach to development.  Before we write code, we're going to write tests that will tell us if the code we do write is operating the way that we expect it to.  

With this approach, we start simple.  The first test we have for converting an Arabic number to a Roman numeral is converting 1 to I.  Then we make things a little harder; we'll convert 4.  From there, maybe we'll move on to converting 5.  We'll continue with this step-by-step approach until we can convert any Arabic number to its Roman numeral equivalent.

We'll be using RSpec for testing.  The files containing our tests will be located in the `spec/` directory.  For this challenge, we only have one test file:  `spec/roman_numerals_spec.rb`.

To run our tests from the command line, we simply need to navigate to our application's root directory and run the `rspec` command.  This command will look for a `spec/` directory.  It will look at each of the files in the `spec/` directory and run any file whose filename ends in *_spec.rb*.

### Roman Numerals as Representation
Has anyone ever seen a 5? Not a symbol we write on a piece of paper or print to a screen, but an actual, honest-to-goodness 5?  Of course not. You've seen things that somehow embody five: five apples, five fingers, five weekdays on the calendar, a scrap of paper with *5* written on it, and so forth.

Think of all the ways to represent the integer 5.  Symbols like *5*, *five*, *V*, and *IIIII* all ways to represent 5. If we asked a three-year-old, they might hold up the five fingers on their hand or pull out five pennies from their pocket. Computers encode numbers their own way, as a sequence of 0s and 1s called [binary](http://en.wikipedia.org/wiki/Binary_number).  [The map is not the territory](http://en.wikipedia.org/wiki/Map%E2%80%93territory_relation), as they say.


##Releases

###Release 0 : Old Roman Numerals

| Arabic Number  | Roman Numeral |
| -------------- | ------------- |
| 1              | I             |
| 5              | V             |
| 10             | X             |
| 50             | L             |
| 100            | C             |
| 500            | D             |
| 1000           | M             |

*Table 1*. Arabic number and their old Roman numeral equivalents.


In the early days of Roman numerals, the Romans built their numerals from the individual characters in Table 1 (e.g., I, V, X, etc.) written largest value to smallest from left to right.  To determine the value of any numeral, they used straight addition.  I is equivalent to 1.  II is equivalent to 1 + 1, or 2.  VIIII is equivalent to 5 + 1 + 1 + 1 + 1, or 9.

We are going to begin writing a method `convert_to_roman`.  When passed an integer between 1 and 3000, this method returns a string containing the proper old Roman numeral.  In other words, `convert_to_roman(4)` should return the string `'IIII'`.

We'll need to test that our code works. We have a test file `spec/roman_numerals_spec.rb`.  This file contains two tests which have been provided for us.  One test will let us know whether we're correctly converting 1. The second test will let us know if we're correctly converting 4.

Run the test suite (see *Summary* for instructions).  The tests should fail since we haven't done any work yet.

Let's start simple and make the test for converting 1 pass.  To do so, write the least amount of code as possible—maybe your method just returns a hard-coded string.

After the test for converting 1 is passing, let's pass the test for converting 4.  Again, write the least amount of code as possible.

### Release 1: Write New Tests

The two provided tests were enough to get us started, but they don't cover all the behavior that we expect from our method.  Can our method convert 5, 6, 10, etc.?  We'll need to write and pass tests that confirm our method is working as intended.

Update the file `spec/roman_numerals_spec.rb` with a new test for converting the number 5.  Then, make the next this new test pass.  Once the test passes, write the next test.  Which Arabic number would be a good candidate to check next?

Repeat the cycle of writing and passing tests until we're confident that our method will convert any number from 1 to 3000.

*Hint*: It might be useful to use the integer division `/` and modulus `%` methods.

### Release 2: Modern Roman numerals

Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer.

Rewrite your previous method to return the new-style Roman numerals so when someone calls `to_roman(4)`, it should return the string `'IV'`. You'll probably have to change your tests now, since the rules have changed. You'll want to add new tests, too. A handy table of Arabic-to-Roman numerals is below, that might be useful.

#### Examples

| Arabic | Roman  |
| ------ | ------ |
| 4      | IV     |
| 9      | IX     |
| 14     | XIV    |
| 44     | XLIV   |
| 944    | CMXLIV |


##Optimize Your Learning

Reflect on the pros and cons of each representation. Imagine you're an engineer building a system for people to manipulate numbers and you have two proposals before you: use Roman numerals or use the [Arabic numerals](http://en.wikipedia.org/wiki/Arabic_numerals) we use today. How do you decide and why?

What benefits do Arabic numerals have over Roman numerals as a way to represent numbers? For example, with Arabic numerals we have an obvious way to represent 0. Arabic numerals also typically require fewer characters to represent the same number, e.g., "3111" vs "MMMCXI".

What else? This is a useful exercise in understanding the relationship between how you represent your data and the actions you want to perform on your data—a dynamic you'll see at play in almost every piece of software you write.

For example, if we're counting people as they walk into a room by marking something on a piece of paper, Arabic numerals are a terrible representation. That'd be like trying to go for a hike and using a political map as a guide.

Instead, we opt for using [tally marks](http://en.wikipedia.org/wiki/Tally_marks) to count.
