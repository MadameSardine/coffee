class Fizzbuzz
	
	isDivisibleByThree: (number)->
		@isDivisibleBy(3, number)

	isDivisibleByFive: (number)->
		@isDivisibleBy(5, number)

	isDivisibleByFifteen: (number) ->
		@isDivisibleBy(15, number)

	says: (number) ->
		if @isDivisibleByFifteen(number)
			"Fizzbuzz"
		else if @isDivisibleByThree(number)
			"Fizz"
		else if @isDivisibleByFive(number)
			"Buzz"
		else	
			 number

	isDivisibleBy: (divisor, number)->
		number % divisor == 0

module.exports = Fizzbuzz
