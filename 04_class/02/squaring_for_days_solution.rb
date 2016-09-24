# create a method that squares each item in the array and returns the original array
def square_and_return_original(nums)
  nums.each do |num|
    num ** 2
  end
end




# create a method that squares each item and returns the manipulated array, not the original
def square_and_return_manipulated(nums)
  nums.collect do |num|
    num ** 2
  end
end




# create a method that squares each item in the array and prints a newly defined array with the squared values

def square_and_print_each_manipulated(nums)
  new_nums = []
  nums.each do |i|
    new_nums << i ** 2
  end
  puts new_nums
end

