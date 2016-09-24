# DO NOT ALTER THE game_hash METHOD OR THE game_hash HASH
def game_hash
  game_hash = {
    :away_team => {
      :team_name => "Golden State Warriors", 
      :colors => ["Blue", "Gold"],
      :players => {
        "Stephen Curry" => {
          :number => 30,
          :shoe => 13,
          :points => 30,
          :rebounds => 6,
          :assists => 8,
          :steals => 3,
          :blocks => 2
          },

          "Klay Thompson" => {
            :number => 11,
            :shoe => 16,
            :points => 22,
            :rebounds => 4,
            :assists => 3,
            :steals => 2,
            :blocks => 8
          },

          "Draymond Green" => {
            :number => 23,
            :shoe => 14,
            :points => 14,
            :rebounds => 10,
            :assists => 8,
            :steals => 2,
            :blocks => 3
          },

          "Harrison Barnes" => {
            :number => 40,
            :shoe => 15,
            :points => 12,
            :rebounds => 5,
            :assists => 2,
            :steals => 1,
            :blocks => 5
          },

          "Andre Iguodala" => {
            :number => 9,
            :shoe => 15,
            :points => 7,
            :rebounds => 4,
            :assists => 3,
            :steals => 2,
            :blocks => 1 
          }
        }  
      },

      :home_team => {
        :team_name => "Phoenix Suns", 
        :colors => ["Orange", "Purple"],
        :players => {
          
          "Eric Bledsoe" => {
            :number => 2,
            :shoe => 16,
            :points => 20,
            :rebounds => 14,
            :assists => 6,
            :steals => 2,
            :blocks => 5
        },

        "Brandon Knight" => {
          :number => 3,
          :shoe => 14,
          :points => 20,
          :rebounds => 5,
          :assists => 5,
          :steals => 2,
          :blocks => 2
        },

        "Devin Booker" => {
          :number => 1,
          :shoe => 17,
          :points => 14,
          :rebounds => 3,
          :assists => 3,
          :steals => 3,
          :blocks => 2
        },

        "Mizra Teletovic" => {
          :number => 35,
          :shoe => 19,
          :points => 12,
          :rebounds => 8,
          :assists => 2,
          :steals => 1,
          :blocks => 4
        },

        "TJ Warren" => {
          :number => 12,
          :shoe => 15,
          :points => 11,
          :rebounds => 3,
          :assists => 1,
          :steals => 1,
          :blocks => 4
        }
      }
    }
  }
game_hash
end

# create a method that returns the number of points scored by each player
def num_points_scored(name)
  game_hash.each do |location, attributes|
    attributes[:players].each do |player, stats|
      if player == name
        return stats[:points]
      end
    end
  end
end

# create a method that returns the shoe size of each player
def shoe_size(name)
  game_hash.each do |location, attributes|
    attributes[:players].each do |player, stats|
      if player == name
        return stats[:shoe]
      end
    end
  end
end

# create a method that returns the team colors of each team
def team_colors(team)
  game_hash.each do |location, attributes|
    if attributes[:team_name] == team
      return attributes[:colors]
    end
  end
end

# create a method that returns the name of each team
def team_names
  game_hash.collect do |location, attributes|
    attributes[:team_name]
  end
end

# create a method that returns an array of each player's number for each team
def player_numbers(team)
  player_numbers = []
  game_hash.each do |location, attributes|
    if attributes[:team_name] == team
      attributes[:players].each do |player, stats|
        player_numbers << stats[:number]
      end
    end
  end
  player_numbers
end

# create a method that returns a hash of each player's stats
def player_stats(player_name)
player_stats = {}
  game_hash.each do |location, attributes|
    attributes[:players].each do |player, stats|
      if player == player_name
        player_stats = stats
      end
    end
  end
  player_stats
end

# return a method that returns the number of points for the player with the biggest shoe size
def big_shoe_points
  big_shoes_guy = 0
  points = 0
  game_hash.each do | location, attributes|
    attributes[:players].each do |player, stats|
      if stats[:shoe] > big_shoes_guy
        big_shoes_guy = stats[:shoe]
        points = stats[:points]
      end
    end
  end
  points
end

