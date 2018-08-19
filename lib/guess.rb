require './lib/card'
require 'pry'
class Guess
  attr_reader :choice,
              :card
  def initialize(choice,card)
    @choice = choice
    @card = card
  end


end

card = Card.new(2,"Clubs")
guess = Guess.new("10 of Hearts",card)


puts guess
binding.pry
