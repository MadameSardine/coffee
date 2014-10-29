chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz'

describe 'Fizzbuzz', ->
	fizzbuzz = null

	before ->
		fizzbuzz = new Fizzbuzz

	it 'knows that 3 is divisible by 3', ->
			expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

	it 'knows that 1 is not divisible by 3', ->
			expect(fizzbuzz.isDivisibleByThree(1)).not.to.be.true

	it 'knows that 5 is divisible by 5', ->
			expect(fizzbuzz.isDivisibleByFive(5)).to.be.true

	it 'knows that 1 is not divisible by 5', ->
			expect(fizzbuzz.isDivisibleByFive(1)).not.to.be.true

	it 'knows that 15 is divisible by 15', ->
			expect(fizzbuzz.isDivisibleByFifteen(15)).to.be.true

	it 'knows that 1 is Not divisible by 15', ->
			expect(fizzbuzz.isDivisibleByFifteen(1)).to.be.false

	it 'says "Fizz" if divisible by 3', ->
			expect(fizzbuzz.says(3)).to.equal("Fizz")

	it 'says "Buzz" if divisible by 5', ->
			expect(fizzbuzz.says(5)).to.equal("Buzz")

	it 'says "Fizzbuzz" if divisible by 15', ->
			expect(fizzbuzz.says(15)).to.equal("Fizzbuzz")

	it 'Says number if not divisible by 3 or 5', ->
			expect(fizzbuzz.says(1)).to.equal(1)