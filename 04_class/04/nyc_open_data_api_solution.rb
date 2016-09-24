# REFER TO README.MD FOR MORE INFORMATION

# the hash below is the format which the NYC Open Data API uses

# {
#   "sat_math_avg_score": "404",
#   "school_name": "HENRY STREET SCHOOL FOR INTERNATIONAL STUDIES",
#   "dbn": "01M292",
#   "num_of_sat_test_takers": "29",
#   "sat_writing_avg_score": "363",
#   "sat_critical_reading_avg_score": "355"
# }

# the spec file will use similar hashes to the to call your methods
# these hashes in the spec are called $first_school, $second_school, etc.
# the hashes are not hard coded but rather dynamically change as data changes
# JSON is a file format that is being fetched from the NYC API so the spec file is currently connected to the hashes in the JSON file (raw_data)
# this code works with the NYC Open Data API  



# create a method, math_score, that takes a hash as an argument and returns the value of the average math sat score of the school
def math_score(hash)
  hash.values[0]
end



# create a method, school_name, that takes a hash as an argument and rreturns the name of the school
def school_name(hash)
  hash.values[1]
end



# create a method called, all_keys, that takes a hash as an argument and prints each key
def all_keys(hash)
  hash.each_key do |k|
    puts k
  end
end




# create a method called, all_values, that takes a recycling bin hash as an argument and prints each value
def all_values(hash)
  hash.each_value do |v|
    puts v
  end
end




# create a method called, key_and_value, that takes a recycling bin hash as an argument and prints each key and value in the format: `The #{key} is #{value}`
def key_and_value(hash)
  hash.each do |k,v|
    puts "The #{k} is #{v}."
  end
end


# challenge: create a method called highest_math that returns the highest SAT average math score in the ENTIRE dataset
# note: the spec file is calling the ENTIRE database for this method, rather than a parsed hash within the entire dataset
def highest_math(hash)
  math_scores = []
  hash.each do |k,v|
    math_scores << k.values[0].to_i
  end
  math_scores.sort[-1]
end

# challenge2: create a method called highest_critical_reading that returns the name of the high school with the highest average critical reading sat score
# note: the spec file is calling the ENTIRE database for this method, rather than a parsed hash within the entire dataset
def highest_critical_reading(hash)
  # iterate through hash to find highest value
  rdg_scores = []
  hash.each do |k,v|
    rdg_scores << k.values[5].to_i
  end
  # iterate through hash again to compare all values against highest value and return name
  hash.each do |k, v|
    if k.values[5].to_i == rdg_scores.sort[-1]
      return k.values[1]
    end
  end
end