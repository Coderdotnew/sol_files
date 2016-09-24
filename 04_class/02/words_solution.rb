# reverse each word and return the original array
def reverse_and_return_original(array)
  array.each do |i|
    i.reverse
  end
end





# reverse each word and return the manipulated array
def reverse_and_return_new(array)
  array.collect do |i|
    i.reverse
  end
end




# pluralize each word in the array and return the manipulated array
def pluralize(array)
  array.collect do |word|
    word + "s"
  end
end




# return find each word that begins with the letter "a" and return the array with only those words
def return_a_states(array)
  new_array = []
  array.each do |word|
    if word[0] == "A"
      new_array << word
    end
  end
  new_array
end





# challenge: ke$ha maker
def kesha_maker(array)
  array.collect do |i|
    i.gsub("S","$").gsub("s","$")
  end
end

