class Metropolis
  attr_accessor :villains, :heroes  

  def initialize
    # code your instance variables here
    @villains = ["Lex Luther", "General Zod", "Doomsday"]
    @heroes = ["Superman", "Wonder Woman", "Batman"]
  end

  def superman?(crime)
    # returns a string that states a specific crime and asks if Superman is in the sky
    "There is a #{crime}! It's a bird! It's a plane! It's Superman!"
  end

  def count_villains
    # determine how many villains are in the @villains array
    # if there is 1 villains, returns a string "Superman's got this!"
    # if there are 2 villains, returns a string "Superman needs your help Superwoman!"
    # otherwise return a string "Superman needs your help Superman and Batman!"
    if @villains.count == 1
      "Superman's got this!"
    elsif @villains.count == 2
      "Superman needs your help Wonder Woman!"
    else
      "Superman needs your help Wonder Woman and Batman!"
    end
  end

  def add_hero
    # superman may need more help, add Flash to the heroes array
    @heroes << "Flash"
    @heroes
  end

  def defeat_villain
    # Batman is picking off Gotham's enemies one at a time
    # Write a method that removes the last enemy in the array and returns that villain
    @villains.pop
    @villains
  end

end
