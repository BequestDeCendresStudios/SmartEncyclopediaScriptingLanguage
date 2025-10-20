require "NeoPathfinding"

#def descrepancy_quotient(a, b, c)
#  unique_visitors = a
#  total_views     = b
#  known_cloners   = c
  
#  hidden_traffic_from_ratio = unique_visitors / total_views
  
#  viewer_descrepancy = known_cloners * hidden_traffic_from_ratio
  
#  puts "The amount of unique visitors is #{unique_visitors}, while total views is #{total_views}."
#  puts "Your descrepancy in traffic is #{viewer_descrepancy.to_f}, suggesting more content read than active tech users."
#end

## Evaluates malicious users based on proportionality and compares the difference in traffic between github and youtube.
evaluate_malicious_users(0.508474576, 0.491525424, 0.16, 116)
#descrepancy_quotient(3, 4, 58)

puts "DIFFERENCE IN TRAFFIC"
difference_in_traffic(116, 169)

## This uses a form of machine learning that evolved out of naive bayes in its own direction, to estimate malicious traffic using a dynamic reward allocation.
puts "ESTIMATING MALCIOUS TRAFFIC"

2.times do
  get_statistics(:legitimate_users,        "The amount of legitimate users for github is #{1 - $malicious_humans}.",
                 :malicious_users,         "The amount of non attributive users for github is #{$malicious_humans}",
                 :possible_malicious_bots, "The amount of possible malicious bots is #{$malicious_bots} compared to #{1 - $malicious_bots}")
          
                 dynamic_reward_allocation
end          

## This reanalyzes the statistics form to see where things can be improved.
analyze_statistics
