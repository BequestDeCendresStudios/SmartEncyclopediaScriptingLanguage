require "NeoPathfinding"

a = cette("pomme", "vert")
b = maisette("pomme", "rouge")
c = sinon("pomme", "vert", "rouge")
  
memory_index = "#{a} #{b} #{c}"
  
File.open("_memories/learned_behaviours/moments.txt", "a") { |f|
  f.puts memory_index
}
