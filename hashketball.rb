require "pry"

def game_hash
  
  big_hash = {
    
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        #player 1
        {
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1 
      },
        #player 2
        {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7 
      },
        #player 3
        {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15 
      },
        #player 4
        {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5 
      },
        #player 5
        {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1 
      }
      ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        #player 1
        {
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2 
      },
        #player 2
        {
        :player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10 
      },
        #player 3
        {
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5 
      },
        #player 4
        {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0 
      },
        #player 5
        {
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12 
      }
      ]  
    }
  }
  
  big_hash
end

def num_points_scored(name)

  home_players_arr = game_hash[:home][:players]
  away_players_arr = game_hash[:away][:players]
  
  i = 0
  while i < home_players_arr.length do
  # loop over home team's players names, see if the name exists...
    #...if so, return points of that player
    if home_players_arr[i][:player_name] == name
      return home_players_arr[i][:points]
    else
      # ...if not, loop over away team's player names, do the same
      j = 0
      while j < away_players_arr.length do
        if away_players_arr[j][:player_name] == name
          return away_players_arr[j][:points]
        end
      j += 1
      end
    end
  i += 1
  end
end

def shoe_size(name)
  home_players_arr = game_hash[:home][:players]
  away_players_arr = game_hash[:away][:players]

  home_players_arr.each do |arr_index|
    if arr_index[:player_name] == name
      return arr_index[:shoe]
      
    else
      
      away_players_arr.each do |arr_index|
        if arr_index[:player_name] == name
          return arr_index[:shoe]
        end
      end
    end
  end
end

def team_colors(team)
  if game_hash[:home][:team_name] == team
    return game_hash[:home][:colors]
  else
    return game_hash[:away][:colors]
  end
end

def team_names
  team_name_arr = [] 
  game_hash.each do |key, another_hash|
    team_name_arr << another_hash[:team_name]
  end
  team_name_arr
end

def player_numbers(team)
  num_arr = []
  
  if game_hash[:home][:team_name] == team
    game_hash[:home][:players].each do |arr_index|
      num_arr << arr_index[:number]
    end
  else
    game_hash[:away][:players].each do |arr_index|
      num_arr << arr_index[:number]
    end
  end
  
  num_arr
end

def player_stats(name)
  player_hash = {}
  
  game_hash[:home][:players].each do |arr_index|
    if arr_index[:player_name] == name
      player_hash[:number] = 
    end
  end
  
  player_hash
end



