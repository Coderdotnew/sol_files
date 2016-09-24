# 04 Class Solutions



# ----------------------------01_loops_intro--------------------------



# 01_nye
def countdown_to_midnight(countdown)
  countdown.times do
    puts "#{countdown}"
    countdown = countdown - 1
    sleep 1
  end
  "HAPPY NEW YEAR!"
end


#02_black_friday
def best_buy(num_tvs)
  i = 1
  num_tvs.times do 
    puts "#{i}: You get a TV!"
    i = i + 1
  end
  "#{num_tvs} people get a TV!"
end


#03_snooze
def snooze(num_times_wanna_snooze, min_until_leave)
  i = 0
  num_times_wanna_snooze.times do
    puts "I can hit snooze #{(min_until_leave/10) - i} more times"
    i = i + 1
  end
  "TIME TO GO!"
end


# ----------------------------01_more_loops--------------------------


# 01_loopy
def while_loop
  i = 1
  while i <= 5
    puts "This is loop #{i}"
    i += 1
  end
  "Now you're a loop master!"
end

def until_loop
  i = 1
  until i > 5
    puts "This is loop #{i}"
    i += 1
  end
  "Now you're a loop master!"
end

def for_loop
  i = 1
  for i in (1..5)
    puts "This is loop #{i}"
    i += 1
  end
  "Now you're a loop master!"
end


#02_netflix_binge
def netflix_hours
	i = 0
	for i in (0..10)
		puts "#{i} hours of Netflix down, #{10 - i} to go."
		i += 1
	end
	"Netflix binge complete."
end

#03_fizz_buzz_loops
def fizzbuzz_loops(num)
	i = 1
	for i in (1..num)
		if i % 3 == 0 && i % 5 == 0
			puts "FizzBuzz"
		elsif i % 3 == 0
			puts "Fizz"
		elsif i % 5 == 0
			puts "Buzz"
		else
			puts i
		end
	end
end


# ----------------------------03_challenges--------------------------


# 01_factorials
def factorial(num)
  if num == 0
    1
  else
    num * factorial(num-1)
  end
end


# 02_binary_conversion
#array
def decimal_to_binary(num)
	if num.is_a?(Integer) == false
		"This method only accepts positive integers"
	elsif num < 0
		"This method only accepts positive integers"
	elsif 
		array = [num]
	while num > 1
		num = num / 2
		array << num
	end
	binary = []
	array.each do |num2|
		if num2.even?
			binary << 0
		elsif
			binary << 1
		end
	end
	binary.join.reverse.to_s
	end
end

