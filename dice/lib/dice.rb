require 'dice'

class Dice
 attr_reader :dice 
  def initialize
    @dice = []
  end

  def rolls
    score = rand(1..6)
    return score
  end

  def rolls_many
    puts "How many dice do you want to rolls?"
    input = gets.chomp
    n = input.to_i
    i = 0
    while i<n do
      score = rand(1..6)
      i+=1
      @dice.push(score)
      break if i == n
    end
    return @dice
  end

end
