# 05 Class Solutions



# -------------------------01_intro_to_arrays--------------------------



# 01_array_methods
def sort_words(words)
	words.sort
end

def sort_nums(nums)
	nums.sort
end

def include_method(teams_array, team)
	teams_array.include?(team)
end

def reverse_method(cities)
	cities.reverse
end

def first_method(cities)
	cities.first
end

def last_method(cities)
	cities.last
end

def count_method(cities)
	cities.count
end

def to_array_method(range)
	range.to_a
end


# 02_access_granted
def third_dog
	$dogs[2]
end

def first_subject
	$subjects[0]
end

def last_three_movies
	$movies.last(3)
end

def fourth_letter_third_school
	$schools[2][3]
end

def third_word_second_movie
	$movies[1].split[2]
end

def reverse_first_subject
	$subjects[0].reverse
end

def reverse_second_word_of_fourth_movie
	$movies[3].split[1].reverse
end


# 03_pop_n_push
def number_pop(nums)
	nums.pop
	nums
end

def number_push(nums)
	nums << 6
	nums
end

def number_pop_last_2_items(nums)
	nums.pop(2)
	nums
end

def push_in_numbers(nums)
	array.push(20).push(40)
  array.sort
end



# -------------------------02_array_enumerables--------------------------



# 01_squaring_for_days
def square_and_return_original(nums)
  nums.each do |num|
    num ** 2
  end
end

def square_and_return_manipulated(nums)
  nums.collect do |num|
    num ** 2
  end
end

def square_and_print_each_manipulated(nums)
  new_nums = []
  nums.each do |i|
    new_nums << i ** 2
  end
  puts new_nums
end

# 02_olympics
def first_event(array)
  array.first
end

def remove_first(array)
  array.delete_at(0)
  array
end

def update_event_list(array)
  array.push("cycling")
end

def order_events(array)
  new_array = []
  array.each_with_index do |event, index|
    new_array << "#{index+1}. #{event.capitalize}"
  end
  new_array
end


# 03_class_schedule
def swap_first_and_last_class(array)
  array[0], array [4] = array[4], array[0]
  array
end

def update_bio(array)
  array[1] = "AP Biology"
  array
end

def add_film(array)
  array.insert(3, "Film")
end

def each(array)
  array.each do |i|
    i
  end
end

def print_schedule_order(array)
  array.each_with_index do |value, index|
    puts "#{index+1}. " + "#{value}"
  end
end


# 04_word_manipulator
def reverse_and_return_original(array)
  array.each do |i|
    i.reverse
  end
end

def reverse_and_return_new(array)
  array.collect do |i|
    i.reverse
  end
end

def pluralize(array)
  array.collect do |word|
    word + "s"
  end
end

def return_a_states(array)
  new_array = []
  array.each do |word|
    if word[0] == "A"
      new_array << word
    end
  end
  new_array
end

def kesha_maker(array)
  array.collect do |i|
    i.gsub("S","$").gsub("s","$")
  end
end

# -------------------------03_challenges--------------------------

def caesar_encrypt(shift, text)
 text_array = text.split("")
 encrypted_code = []
 text_array.each do |letter|
   if (97..122).include?(letter.ord)
     if letter.ord + shift > 122
       shifted = letter.ord + shift - 26
       encrypted_code << shifted.chr
     else
       shifted = letter.ord + shift
       encrypted_code << shifted.chr
     end
   elsif (65..90).include?(letter.ord)
     if letter.ord + shift > 90
       shifted = letter.ord + shift - 26
       encrypted_code << shifted.chr
     else
       shifted = letter.ord + shift
       encrypted_code << shifted.chr
     end
   else
     encrypted_code << letter.ord.chr
   end
 end
 encrypted_code.join
end

# or

def caesar_encrypt(shift, text)
 text_array = text.split("")
 num_array = []
 num_array = text_array.collect do |letter|
   # checks if its a letter - not a number or punctuation/special character
   if (65..90).include?(letter.ord) || (97..122).include?(letter.ord)
     shift_letter = letter.ord + shift
     # checks if letter need to be looped back to beginning of alphabet
     if (letter.ord < 91 && shift_letter > 90) || (letter.ord < 123 && shift_letter > 122)
       shift_letter = letter.ord - 26 + shift # calculates which letter spot it should be looped back to
       shift_letter.chr # converts the number into the new letter
     else
     shift_letter.chr
     end
   
   else
     letter
   end
 end
 num_array.join
end



# or

def caesar_encrypt(shift, text)
 code = []
 text.each_char do |char|
   ascii = char.ord
   if ascii.between?(97, 122)
     shifted = (ascii + shift > 122)? (ascii + shift - 26) : (ascii + shift)
     code << shifted.chr
   elsif ascii.between?(65, 90)
     shifted = (ascii + shift > 90)? (ascii + shift - 26) : (ascii + shift)
     code << shifted.chr
   else
     code << ascii.chr
   end
 end
 code.join
end

[8:55]  
# create an array that returns an array with each first name taken before the @ symbol from the $coderdotnew array
def firstname_from_email(array)
 fnames = []
 array.each do |email|
   before_at = email.split("@")
   fnames << before_at[0].capitalize
 end
 fnames
end

# create an array that returns an array of full names that comes before the @ symbol for each email in the google array
def fullname_from_email(array)
 names = []
 array.each do |email|
   before_at = email.split("@")
   names << before_at[0]
 end
 full_names = []
 names.each do |name|
   true_name = name.gsub(".", " ")
   full_names << true_name.split.map(&:capitalize).join(" ")
 end
 full_names
end
