# DO NOT ALTER THE FOLLOWING HASH
taco_ingredients = {
  :tortilla => "3",
  :shredded_chicken => "2 cups",
  :salsa => "1 cup",
  :shredded_cheddar_cheese => "3 cups"
  }

# return the hash
def ingredients(taco_ingredients)
  taco_ingredients
end

# return the amount of shredded cheese in the ingredient
def amount_of_cheese(taco_ingredients)
  taco_ingredients[:shredded_cheddar_cheese]
end

# print out every ingredient and amount in the hash by iterating through the collection
# hint: use the each method
def ingredients_and_amounts(taco_ingredients)
  taco_ingredients.each do |key, value|
    puts "#{key} #{value}"
  end

end

# print out just the ingredients without the amounts
# hint: you may want the each_key method
def ingredients(taco_ingredients)
  taco_ingredients.each do |key, value|
    puts "#{key}"
  end
end

# print out just the amounts without the ingredients
def amounts(taco_ingredients)
  taco_ingredients.each do |key, value|
    puts "#{value}"
  end
end

# return the total number of keys and values in the hash
def total_count(taco_ingredients)
  taco_ingredients.keys.length + taco_ingredients.values.length
end


# return the total number of CUPS of ingredients used
def total_cups(taco_ingredients)
  taco_ingredients.values[0][0].to_i + taco_ingredients.values[1][0].to_i + taco_ingredients.values[2][0].to_i + taco_ingredients.values[3][0].to_i
end