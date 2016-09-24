# swap the first and last class and return the updated array
# hint: look up how to swap elements in an array
def swap_first_and_last_class(array)
  array[0], array [4] = array[4], array[0]
  array
end



# change Biology to AP Biology and return the updated array
def update_bio(array)
  array[1] = "AP Biology"
  array
end




# add Film after AP Comp Sci to your schedule and return the updated array
# consider << or .push
# hint: though you may want to look up more abstract methods avaiable in Ruby doc...
def add_film(array)
  array.insert(3, "Film")
end




# use iteration to return each class in the array
def each(array)
  array.each do |i|
    i
  end
end





# challenge: using the each_with_index method, print the order of your schedule to the screen
# using the index values, print each class with index value first.
# example: 1. Spanish
def print_schedule_order(array)
  array.each_with_index do |value, index|
    puts "#{index+1}. " + "#{value}"
  end
end
