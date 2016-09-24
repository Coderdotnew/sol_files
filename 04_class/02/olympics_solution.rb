# create a method, first_event, that takes in an events array as an arguments
# return the first item in the array
def first_event(array)
  array.first
end



# create a method, remove_first, that takes in an events array as an arguments
# remove the first item from the array
def remove_first(array)
  array.delete_at(0)
  array
end


# create a method, update_event_list, that takes in an events array as an arguments
# add the event cycling to the end of the array
def update_event_list(array)
  array.push("cycling")
end





# create a method, order_events, that takes in an events array as an arguments
# your goal is to iterate through each array index value and return a new array 
# the new array will list the items with their index value in the following format
# example: ["1. Hurdles", "2. Basketball", etc.]
def order_events(array)
  new_array = []
  array.each_with_index do |event, index|
    new_array << "#{index+1}. #{event.capitalize}"
  end
  new_array
end
