class SecretHandshake

  def initialize(num)
    @num = num
  end 

  def commands
    answer = []
    if @num[-1] == "1"
      answer << "high five"
    end
    if @num[-2] == "1"
      answer << "fist bump"
    end
    if @num[-3] == "1"
      answer << "low five"
    end
    if @num[-4] == "1"
      answer << "jump spin"
    end
    if @num[-5] == "1"
      answer = answer.reverse
    end
    answer.join(" ")
  end

end
