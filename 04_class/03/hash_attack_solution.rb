# DO NOT ALTER THE FOLLOWING HASH
$capitals = {
  :arizona => "Scottsdale",
  :california => "Sacramento",
  :texas => "Austin",
  :florida => "Tallassee",
  :colorado => "Denver",
  :michigan => "Lansing",
  :hawaii => "Honolulu",
  :utah => "Salt Lake City"
}

# return the number of keys
def key_count
  $capitals.keys.length
end


# return the count of values 
def value_count
  $capitals.values.length
end

# add oregon and its capital, Salem to the hash and return the hash
def add_oregon
  $capitals[:oregon] = "Salem"
  $capitals
end

# delete utah entirely from the hash
def delete_utah
  $capitals.delete(:utah)
end

# upcase the hawaii value
def upcase
  $capitals.values[6].upcase
end

# update arizona value to Phoenix
def update_arizona
  $capitals[:arizona] = "Phoenix"
end



# challenge: convert the capitals hash to an array using the .to_a method
# iterate through the arrays to print out: "The capital of ____ is _____." for each state and capital 
# note: you must complete the previous methods so your hash has the most up to date values
def print_states_capitals
  a = $capitals.to_a
  counter = 0
  a.each do |i|
    puts "The capital of #{a[counter][0].capitalize} is #{a[counter][1]}."
    counter += 1
  end
end

