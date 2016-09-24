# inside the following method, define an empty hash
def define_a_hash
  # your code here
  hash = {}
end

# use the spec file to create the oscar_winners hash in the following method
def oscars_hash
  # your code here
  hash = {
  :actor => "Leonardo DiCaprio",
  :picture => "Spotlight",
  :effects => "Ex Machina"
}
end

# DO NOT ALTER THE FOLLOWING HASH
$mascots = {
  :stanford => "Tree",
  :asu => "Sun Devil",
  :uofa => "Wildcat",
  :oregon => "Bird",
  :usc => "Trojan"
}

# return the stanford mascot
def stanford_mascot
  $mascots[:stanford]
  # or
  $mascots.values[0]
end

# update the oregon mascot to be "Duck"
def update_oregon_mascot
  $mascots[:oregon] = "Duck"
  # or
  $mascots.values[3] = "Duck"
end

# return usc key symbol
def return_usc
  $mascots.keys[4]
end

# add key for ucla
def add_ucla_key
  $mascots.keys[5] = :ucla
end

def add_ucla_value
  $mascots.values[5] = "Bruin"
end






