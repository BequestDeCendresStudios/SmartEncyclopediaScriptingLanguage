require "NeoPathfinding"

def create_francais
  require "NeoPathfinding"
  
  a = cette("pomme", "vert")
  b = maisette("pomme", "rouge")
  c = sinon("pomme", "vert", "rouge")
  
  memories_index = "#{a}#{b} #{c}"
 
  File.open("_memories/learned_behaviours/moments.txt", "a") { |f|
    f.puts memories_index
  }
end

################################################################################################
#                                       Brain Simulation                                       #
################################################################################################
def memories
  #       mem1  mem2  mem3
  # mem1  m1,m1 m1,m2 m1,m3
  # mem2  m2,m1 m2,m2 m2,m3
  # mem3  m3,m1 m3,m2 m3,m3

  memories = File.readlines("_memories/learned_behaviours/moments.txt")

  total_size = memories.size.to_i
  size_limit = memories.size.to_i

  if    total_size == 3
    memories_index = [
     [["#{memories[0]}", "#{memories[0]}", "#{memories[0]}"],
      ["#{memories[0]}", "#{memories[0]}", "#{memories[1]}"],
      ["#{memories[0]}", "#{memories[0]}", "#{memories[2]}"]],
           
      [["#{memories[1]}", "#{memories[1]}", "#{memories[0]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[2]}"]],
           
      [["#{memories[2]}", "#{memories[2]}", "#{memories[2]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}"]],
    ]

    row_options = [0, 1, 2]
    col_options = [0, 1, 2]
    arr_options = [0, 1, 2]

    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    current_memories = memories_index[cur_row][cur_col][cur_arr]

    puts "Current Memories: #{current_memories}"

    # What records into long term memories.
    if    current_memories == memories[0]
    elsif current_memories == memories[1]
    elsif current_memories == memories[2]
    else
      puts "Not recorded for longterm memories."
    end
  elsif total_size == 5
    memories_index = [
      [["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[1]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[2]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[3]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[4]}"]],
           
      [["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[0]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[2]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[3]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[4]}"]],
            
      [["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[0]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[1]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[3]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[4]}"]],
           
      [["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[0]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[1]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[2]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[4]}"]],
           
      [["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[0]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[1]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[2]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[3]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}"]],
     ]

     row_options = [0, 1, 2, 3, 4]
     col_options = [0, 1, 2, 3, 4]
     arr_options = [0, 1, 2, 3, 4]

    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    current_memories = memories_index[cur_row][cur_col][cur_arr]

    puts "Current Memories: #{current_memories}"

    # What records into long term memories.
    if    current_memories == memories[0]
    elsif current_memories == memories[1]
    elsif current_memories == memories[2]
    elsif current_memories == memories[3]
    elsif current_memories == memories[4]
    else
      puts "Not recorded for longterm memories."
    end
  elsif total_size == 7
    memories_index = [
      [["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[1]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[2]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[3]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[4]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[5]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[6]}"]],
            
      [["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[0]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[2]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[3]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[4]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[5]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[6]}"]],
           
      [["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[0]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[1]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[3]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[4]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[5]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[6]}"]],
           
      [["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[0]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[1]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[2]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[4]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[5]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[6]}"]],
           
      [["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[0]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[1]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[2]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[3]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[5]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[6]}"]],
           
      [["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[0]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[1]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[2]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[3]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[4]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[6]}"]],
           
      [["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[0]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[1]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[2]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[3]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[4]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[5]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}"]],
     ]

     row_options = [0, 1, 2, 3, 4, 5, 6]
     col_options = [0, 1, 2, 3, 4, 5, 6]
     arr_options = [0, 1, 2, 3, 4, 5, 6]

     cur_row = row_options.sample
     cur_col = col_options.sample
     cur_arr = arr_options.sample

     current_memories = memories_index[cur_row][cur_col][cur_arr]

     puts "Current Memories: #{current_memories}"

     # What records into long term memories.
     if    current_memories == memories[0]
     elsif current_memories == memories[1]
     elsif current_memories == memories[2]
     elsif current_memories == memories[3]
     elsif current_memories == memories[4]
     elsif current_memories == memories[5]
     elsif current_memories == memories[6]
     else
      puts "Not recorded for longterm memories."
    end
  elsif total_size == 9
    memories_index = [
      [["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[1]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[2]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[3]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[4]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[5]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[6]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[7]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[8]}"],
       ["#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[0]}", "#{memories[9]}"]],
           
      [["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[0]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[2]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[3]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[4]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[5]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[6]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[7]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[8]}"],
       ["#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[1]}", "#{memories[9]}"]],
        
      [["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[0]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[1]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[3]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[4]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[5]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[6]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[7]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[8]}"],
       ["#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[2]}", "#{memories[9]}"]],

      [["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[0]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[1]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[2]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[4]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[5]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[6]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[7]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[8]}"],
       ["#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[3]}", "#{memories[9]}"]],
           
      [["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[0]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[1]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[2]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[3]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[5]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[6]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[7]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[8]}"],
       ["#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[4]}", "#{memories[9]}"]],
           
      [["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[0]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[1]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[2]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[3]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[4]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[6]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[7]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[8]}"],
       ["#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[5]}", "#{memories[9]}"]],
           
      [["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[0]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[1]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[2]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[3]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[4]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[5]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[7]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[8]}"],
       ["#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[6]}", "#{memories[9]}"]],
           
      [["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[0]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[1]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[2]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[3]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[4]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[5]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[6]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[8]}"],
       ["#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[7]}", "#{memories[9]}"]],
           
      [["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[0]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[1]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[2]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[3]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[4]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[5]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[6]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[7]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}"],
       ["#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[8]}", "#{memories[9]}"]],
           
      [["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[0]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[1]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[2]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[3]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[4]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[5]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[6]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[7]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[8]}"],
       ["#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}", "#{memories[9]}"]],
     ]
         
     row_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
     col_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
     arr_options = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

     cur_row = row_options.sample
     cur_col = col_options.sample
     cur_arr = arr_options.sample

     current_memories = memories_index[cur_row][cur_col][cur_arr]

     puts "Current Memories: #{current_memories}"
    
     # What records into long term memories.
     if    current_memories == memories[0]
     elsif current_memories == memories[1]
     elsif current_memories == memories[2]
     elsif current_memories == memories[3]
     elsif current_memories == memories[4]
     elsif current_memories == memories[5]
     elsif current_memories == memories[6]
     else
      puts "Not recorded for longterm memories."
    end
  else
    puts "To many memories or few to possibly map..."
  end
end

create_francais
create_francais

8.times do
  memories
end

gets.chomp
