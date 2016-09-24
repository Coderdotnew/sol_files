# 03 Class Solutions



# ----------------------------01_conditionals--------------------------


# 01_math_conditionals
def less_than(num)
	if num < 100
		"That's a small number."
	else
		"That's a large number."
	end
end

def even?(num)
	if num.even?
		true
	else
		false
	end
end

def odd?(num)
	if num.odd?
		true
	else
		false
	end
end

def zero?(num)
	if num == 0
		true
	else
		false
	end
end


# 02_palindromes
def palindrome?(string)
	if string == string.reverse
		"It's a palindrome!"
	else
		"Not a palindrome."
	end
end


# 03_concert_convos_pt2
def concert_convo(phrase)
	if phrase == phrase.upcase
		"I love this song, too!"
	else
		"Speak louder!"
	end
end


# --------------------------02_multiple_branches-----------------------


# 01_awards_season
def best_acting(person)
	if person == "Brie Larson"
		"Best actress"
	elsif person == "Leonardo DiCaprio"
		"Best actor"
	else
		"Not nominated"
	end
end

def best_picture(movie)
	if movie == "Spotlight"
		"Winner"
	elsif movie == "The Martian"
		"Nominee"
	elsif movie == "Room"
		"Nominee"
	elsif movie == "Mad Max"
		"Nominee"
	elsif movie == "The Revenant"
		"Nominee"
	elsif movie == "Brooklyn"
		"Nominee"
	elsif movie == "Bridge of Spies"
		"Nominee"
	elsif movie == "The Big Short"
		"Nominee"
	else
		"Not nominated"
	end
end


# 02_fizzbuzz
def fizzbuzz(num)
	if num % 3 == 0 && num % 5 == 0
		"FizzBuzz"
	elsif num % 3 == 0
		"Fizz"
	elsif num % 5 == 0
		"Buzz"
	else
		num
	end
end


# 03_leap_year
def leap_year(year)
	if year % 4 == 0 && year % 400 == 0
		"Leap year!"
	elsif year % 4 == 0 && year % 100 != 0
		"Leap year!"
	else
		"Not a leap year."
	end
end


# --------------------------03_calculator----------------------------





# ----------------------------04_challenges---------------------------


# 01_fizzbuzz_sum
def fizzbuzz_sum
	sum = 0
	for i in (1..999)
		if (i % 3 == 0) && (i % 5 == 0)
			sum += i
		end
	end
	sum
end


# 02_mario
def mario(num)
	a = 1
	b = num
	num.times do
		puts (" " * b) + ("#" * a) + " " + ("#" * a) + (" " * b)
		a += 1
		b -= 1
	end
end

