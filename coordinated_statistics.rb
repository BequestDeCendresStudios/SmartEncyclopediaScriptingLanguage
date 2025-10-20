require "NeoPathfinding"

def med_counter
  # Med counter goes here
end

def coordinative
  evaluate_malicious_users(0.8125, 0.1875, 0.16, 13)

  possible_cycles = [
    [[1, 1, 1, 1, 1, 1],
     [1, 1, 1, 1, 1, 2],
     [1, 1, 1, 1, 1, 4],
     [1, 1, 1, 1, 1, 8],
     [1, 1, 1, 1, 1, 7],
     [1, 1, 1, 1, 1, 5]],

    [[2, 2, 2, 2, 2, 1],
     [2, 2, 2, 2, 2, 2],
     [2, 2, 2, 2, 2, 4],
     [2, 2, 2, 2, 2, 8],
     [2, 2, 2, 2, 2, 7],
     [2, 2, 2, 2, 2, 5]],
     
    [[4, 4, 4, 4, 4, 1],
     [4, 4, 4, 4, 4, 2],
     [4, 4, 4, 4, 4, 4],
     [4, 4, 4, 4, 4, 8],
     [4, 4, 4, 4, 4, 7],
     [4, 4, 4, 4, 4, 5]],
     
    [[8, 8, 8, 8, 8, 1],
     [8, 8, 8, 8, 8, 2],
     [8, 8, 8, 8, 8, 4],
     [8, 8, 8, 8, 8, 8],
     [8, 8, 8, 8, 8, 7],
     [8, 8, 8, 8, 8, 5]],
     
    [[7, 7, 7, 7, 7, 1],
     [7, 7, 7, 7, 7, 2],
     [7, 7, 7, 7, 7, 4],
     [7, 7, 7, 7, 7, 8],
     [7, 7, 7, 7, 7, 7],
     [7, 7, 7, 7, 7, 5]],
     
    [[5, 5, 5, 5, 5, 1],
     [5, 5, 5, 5, 5, 2],
     [5, 5, 5, 5, 5, 4],
     [5, 5, 5, 5, 5, 8],
     [5, 5, 5, 5, 5, 7],
     [5, 5, 5, 5, 5, 5]],
  ]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  arr_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  size_limit = possible_cycles[cur_row][cur_col][cur_arr]
  
  a = cette("pomme", "vert")
  b = maisette("pomme", "rouge")
  c = sinon("pomme", "vert", "rouge")
  
  Saad::Competitive.specify_measurements("Legitimate Users: #{1 - $malicious_humans} Non Attributive Users: #{$malicious_humans} Bots: #{$malicious_bots}",       "Player",
                                         "Legitimate Users: #{1 - $malicious_humans} Non Attributive Users: #{$malicious_humans} Bots: #{$malicious_bots}", "Gribatomaton",
                                         "Legitimate Users: #{1 - $malicious_humans} Non Attributive Users: #{$malicious_humans} Bots: #{$malicious_bots}",        "Enemy")
                                         
  Saad::Coordinated.starting_stats

  cycle = 0

  Saad::Coordinated.evaluate_player
  Saad::Coordinated.evaluate_gribatomaton
  Saad::Coordinated.evaluate_enemy

  Saad::Coordinated.mechanic_prediction

  size_limit.times do
    cycle = cycle + 1
  
    puts "~~~Cycle #{cycle}"

    Saad::Coordinated.evaluate_player
    Saad::Coordinated.evaluate_gribatomaton
    Saad::Coordinated.evaluate_enemy
    Saad::Coordinated.mechanic_prediction

    Saad::Coordinated.decrement_inputs

    2.times do
      get_statistics(:player_prediction,                   "[ Legitimate Users: #{1 - $malicious_humans} Non Attributive Users: #{$malicious_humans} Bots: #{$malicious_bots} ] is #{1 / $player_prediction}.",
                     :gribatomaton_prediction, "[ Legitimate Users: #{1 - $malicious_humans} Non Attributive Users: #{$malicious_humans} Bots: #{$malicious_bots} ] #{1 / $gribatomaton_prediction}.",
                     :enemy_prediction,                      "[ Legitimate Users: #{1 - $malicious_humans} Non Attributive Users: #{$malicious_humans} Bots: #{$malicious_bots} ] #{1 / $enemy_prediction}.")

      dynamic_reward_allocation
    end
  end
end

coordinative
