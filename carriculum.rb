require_relative "lib/Carriculum.rb"

def fruit
  Carriculum::LearnFruit.apple
  Carriculum::LearnFruit.banana
  Carriculum::LearnFruit.lemon
  Carriculum::LearnFruit.kiwi
end

def vegetables
  Carriculum::LearnVegetables.carrot
  Carriculum::LearnVegetables.eggplant
  Carriculum::LearnVegetables.potato
end

def drinks
  Carriculum::LearnDrinks.milk
  Carriculum::LearnDrinks.water
  Carriculum::LearnDrinks.cafe
end

vegetables; fruit; drinks
