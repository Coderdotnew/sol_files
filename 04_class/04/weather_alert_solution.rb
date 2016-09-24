# DO NOT ALTER THE FOLLOWING HASHES
phx_weather = {
  :city => "Phoenix",
  :description => "warm",
  :temperature_farenheit => 86.7,
  :temperature_celcius => 30.3
}

nyc_weather = {
  :city => "New York City",
  :season => ["fall", "winter", "spring", "summer"],
  :temperature => [55, 33, 48, 75]
}

# return the city from the weather hash 
def city(hash)
  hash[:city]
end

# return the description from the weather hash 
def description(hash)
  hash[:description]
end

# return each value of the hash in a string in the format expected 
def weather_report(hash)
  "The weather in #{hash.values[0]} is #{hash.values[1]}. The temperature is #{hash.values[2]} degrees Farenheit and #{hash.values[3]} degrees Celcius."
end

# print out every key and value in the following format: "The [key] is [value]."
def city_weather(hash)
  hash.each do |key, value|
    puts "The #{key} is #{value}."
  end
end

# return the summer season for NYC
def nyc_season(hash)
  hash.values[1][3]
end

# return the temperature for NYC in the fall
def nyc_fall(hash)
  hash.values[2][0]
end

# return a string for the weather in the fall for NYC
def nyc_fall_weather(hash)
  "The weather for #{hash.values[0]} in the #{hash.values[1][0]} is #{hash.values[2][0]} degrees."
end

# return each temperature value from nyc_weather
def nyc_temps(hash)
  hash.values[2].each do |i|
    "#{i}"
  end
end






