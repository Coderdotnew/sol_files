class House

  def initialize(name, animal, founder)
    @name = name
    @animal = animal
    @founder = founder
    @location = "Hogwarts"
  end

  def name
    @name
  end

  def animal
    @animal
  end

  def location
    @location
  end

  def founder
    @founder
  end

  def most_famous_member=(most_famous_member)
    @most_famous_member = most_famous_member
  end

  def most_famous_member
    @most_famous_member 
  end

  def characteristic
    if @name == "Ravenclaw"
      "Intelligence, knowledge, and wit"
    elsif @name == "Hufflepuff"
      "Hard work, patience, loyalty"
    elsif @name == "Gryffindor"
      "Bravery, daring, chivalry"
    elsif @name == "Slytherin"
      "Ambition, cunning, resourcefulness"
    end
  end

end