# Roman Numerals

##Summary

We're going to write a method that converts an integer to its Roman numeral equivalent. In other words, if we give our method the Arabic number 476, our method will return the Roman numeral CDLXXVI.

Determining how to take any number (e.g., 1, 58, 1948, etc.) and convert it into its Roman numeral equivalent is our main focus.  But, in solving this problem, we'll have the opportunity to practice developing with a test-first approach.  And, as always, we should pay attention to the quality of the code that we write.  Are we writing methods that do only one thing?  Is our code DRY—as in *don't repeat yourself*? Are we giving our variables descriptive names?  We need to be very deliberate with our code to make it as easy to read as possible; make intentional decisions.

### Test-first Approach
At Dev Bootcamp we take a test-driven approach to development.  Before we write code, we're going to write tests that will tell us if the code we do write is operating the way that we expect it to.  

With this approach, we start simple.  The first test we have for converting an Arabic number to a Roman numeral is converting 1 to I.  Then we make things a little harder; we'll convert 4.  From there, maybe we'll move on to converting 5.  We'll continue with this step-by-step approach until we can convert any Arabic number to its Roman numeral equivalent.

### Roman Numerals as Representation
Has anyone ever seen a 5? Not a symbol we write on a piece of paper or print to a screen, but an actual, honest-to-goodness 5?  Of course not. You've seen things that somehow embody five: five apples, five fingers, five weekdays on the calendar, a scrap of paper with *5* written on it, and so forth.

Think of all the ways to represent the integer 5.  Symbols like *5*, *five*, *V*, and *IIIII* all ways to represent 5. If we asked a three-year-old, they might hold up the five fingers on their hand or pull out five pennies from their pocket. Computers encode numbers their own way, as a sequence of 0s and 1s called [binary](http://en.wikipedia.org/wiki/Binary_number).  [The map is not the territory](http://en.wikipedia.org/wiki/Map%E2%80%93territory_relation), as they say.


##Releases

###Release 0 : Old-school Roman numerals

For reference, these are the building blocks for how we encode numbers with Roman numerals:

| Roman Numeral | Arabic Numeral |
| ------------- | -------------- |
| I             | 1              |
| V             | 5              |
| X             | 10             |
| L             | 50             |
| C             | 100            |
| D             | 500            |
| M             | 1000           |


In the early days of Roman numerals, the Roman's didn't bother with any of this new-fangled subtraction 'IX' nonsense. No sir, it was straight addition, biggest to littlest–so 9 was written 'VIIII' and so on.

Write a method `to_roman` that when passed an integer between 1 and 3000 returns a string containing the proper old-school Roman numeral.

In other words, `to_roman(4)` should return the string `'IIII'`.

We'll need to test if our code works. You'll find a test file in the source directory called `roman_numerals_spec.rb`. This test file uses `rspec`, so you can run your tests with `rspec roman_numerals_spec.rb`. Go ahead and run it now, the tests should fail since you haven't done any work yet.

Don't just rely on the existing tests. You'll need to write tests for several different inputs whose results you know. Test some simple numbers like `to_roman(1)` and more complicated numbers like `to_roman(1646)`. This will serve as a good sanity check. If you find a bug in your code, make sure you write a test that _would_ have caught it. As the saying goes, "never fix the same bug twice."

Hint: Use the integer division `/` and modulus `%` methods.

###Release 1 : Modern Roman numerals

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
