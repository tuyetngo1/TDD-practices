require './lib/dice'
dice = Dice.new
score = dice.rolls #random 1 to 6
puts score
puts "How many dices do you want?"
n = gets.chomp
n.to_i 
dices= []
results = dices.push[score]
result = dices.sum #sum of all dices
p result
