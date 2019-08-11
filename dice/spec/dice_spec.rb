require 'dice'
describe 'dice' do
#Arrange
  it 'can create a dice object' do
#Act
  dice = Dice.new
#Assert
    expect(dice).to be_kind_of(Dice)
  end
end

describe 'dice' do
  it 'responds to rolls method' do
  dice = Dice.new
  expect(dice).to respond_to(:rolls)
  end
end

describe 'dice' do
  it 'generates a random number from 1 to 6' do
  dice = Dice.new
  expect(1..6).to include(dice.rolls)
  end
end

  # describe 'dice' do
  #   it 'ask the user how many dices they want to roll' do
  #     expect(n).to satisfy {n.integer? == true }
  #   end
  # end
describe 'dice' do
  it 'take an argument as number of dices' do
  dice = Dice.new
  expect(dice).to respond_to(:rolls_many)
  end
end

describe 'dice' do
  it 'receive number of dices' do
    allow_any_instance_of(Dice)
    .to receive(:gets)
    .and_return(@dice)
  end
  it 'generate n number of scores for n dices' do
  dice = Dice.new
  dice.rolls_many
  puts @dice
  expect(dice.dice.size).to eq()
  end
end
