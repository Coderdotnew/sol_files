# 02 Class Solutions



# --------------------------01_inro_to_methods---------------------------


# 01_rspec_intro
def what_is_life
  puts "What is the answer to life the universe and everything?"
end

def answer
  puts 42
end


# 02_greetings_earthlings
def greeting
  puts "Greetings Earthlings! We come in peace!"
end

def greeting_with_return
  return "Greetings Earthlings! We come in peace!"
end

def warning
  puts "Just kidding. We only come in peace if you know how to code!"
end

def warning_with_return
  return "Just kidding. We only come in peace if you know how to code!"
end


# 03_roadtrip
def arizona
  puts "Look...the Grand Canyon!"
end

def california
  puts "Look... the Pacific Ocean!"
end

def new_york
  puts "Look... the Statue of Liberty!"
end

def washington_dc
  puts "Look... the White House!"
end


# -----------------------------02_variables---------------------------


# 01_all_about_you
def all_about_you
  puts "What is your first name?"
  f_name = gets.chomp
  puts "What is your last name?"
  l_name = gets.chomp
  puts "What school do you go to?"
  school = gets.chomp
  puts "What is your favorite movie?"
  favorite_movie = gets.chomp
  puts "Who is your favorite music artist?"
  music_artist = gets.chomp
  puts "Hello, I'm #{f_name} #{l_name}! I attend #{school}. My favorite movie is #{favorite_movie}. And my favorite music artist is #{music_artist}."
end


# 02_scope_errors
def error1
  keyword1 = "visibility"
  puts "Error 1 is fixed. Scope is about variable #{keyword1}."
end

def error2
  variable_names = "can only start with a lower case letter or an underscore."
  puts "Error 2 is fixed. Variables #{variable_names}"
end

def error3
  _variable3 = "requires special syntax to input variable data into a string."
  puts "String interpolation #{_variable3}"
end

def error4
  reassigning_variables = "Arizona Cardinals"
  puts "I love football, so my favorite team is the #{reassigning_variables}."
end


# 03_sci_fi_bios
def luke_bio
  puts "What is your name?"
  name = gets.chomp
  puts "Who is your father?"
  father = gets.chomp
  puts "What is your profession?"
  profession = gets.chomp
  "My name is #{name}. My father is #{father}. I am a #{profession}."
end

def harry_bio
  puts "What is your name?"
  name = gets.chomp
  puts "Who is your best friend?"
  best_friend = gets.chomp
  puts "What is your profession?"
  profession = gets.chomp
  "My name is #{name}. My best friend is #{best_friend}. I am a #{profession}."
end


def frodo_bio
  puts "What is your name?"
  name = gets.chomp
  puts "Who is your best friend?"
  best_friend = gets.chomp
  puts "What is your profession?"
  profession = gets.chomp
  "My name is #{name}. My best friend is #{best_friend}. I am a #{profession}."
end


# ------------------------03_method_arguments--------------------------


# 01_method_math
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def divide(num1, num2)
  num1 / num2
end

def multiply(num1, num2)
  num1 * num2
end

def modulo(num1, num2)
  num1 % num2
end

def exponent(num1, num2)
  num1 ** num2
end

def square_root(num)
  Math.sqrt(num)
end

# 02_annoying_little_brother
def little_brother(phrase = "Whatcha doing?! Can I come?!")
	puts phrase
end

# 03_subway_ride
def subway_map(length, width)
  "The map is #{length * width} square inches."
end

def ride_time(time, num_stops)
  "The trip will take #{time * num_stops} seconds."
end

def total_tip(p, n, d, q)
  "Total tip is #{(p * 1) + (n * 5) + (d * 10) + (q * 25)} cents."
end

def grump(string)
  "#{string.upcase}!"
end

def rides_left(current_balance)
  "You have #{(current_balance / 2.75).to_i} rides left."
end

# 04_concert_conversations
def almost_there(artist)
  "OMG. I CAN'T WAIT TO SEE #{artist.upcase}!!"
end

def national_anthem(whisper)
  "#{whisper.downcase} no talking."
end

def encore(fav_song, artist)
  "It's #{fav_song.capitalize} by #{artist.capitalize}! This is my favorite song!"
end


# ---------------------------06_challenges-----------------------------


# dice_roll
def roll
	rand(1..6)
end


# temp_conversion
def c_to_f(temp)
	(temp * 9.0 / 5) + 32
end

def f_to_c(temp)
	((temp - 32) * (5.0 / 9)).round(2)
end



