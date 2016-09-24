class RPS
  attr_accessor :choice, :computer_choice

  def initialize(choice)
    @choice = choice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end  

  def game
    if @choice == "rock" && @computer_choice == "rock"
      "The computer chose rock. TIE!"
    elsif @choice == "rock" && @computer_choice == "paper"
      "The computer chose paper. YOU LOSE!"
    elsif @choice == "rock" && @computer_choice == "scissors"
      "The computer chose scissors. YOU WIN!"
    elsif @choice == "paper" && @computer_choice == "rock"
      "The computer chose rock. YOU WIN!"
    elsif @choice == "paper" && @computer_choice == "paper"
      "The computer chose paper. TIE!"
    elsif @choice == "paper" && @computer_choice == "scissors"
      "The computer chose scissors. YOU LOSE!"
    elsif @choice == "scissors" && @computer_choice == "rock"
      "The computer chose rock. YOU LOSE!"
    elsif @choice == "scissors" && @computer_choice == "paper"
      "Scissors cuts Paper. YOU WIN!"
    elsif @choice == "scissors" && @computer_choice == "scissors"
      "The computer chose scissors. TIE!"
    else
      "That's not how you play!"
    end
  end

end