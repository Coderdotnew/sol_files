# create your class here!
class Avenger

  def initialize(name, real_identity, power)
    @name = name
    @real_identity = real_identity
    @power = power
    @shield_level = 100
  end

  def name
    @name
  end

  def real_identity
    @real_identity
  end

  def power
    @power
  end

  def shield_level
    @shield_level
  end

  def attacked
    @shield_level - 10
  end

end