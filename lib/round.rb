require './lib/card'
require './lib/guess'
require './lib/deck'



class Round
  attr_reader :deck
  def initialize(deck)
    @deck = deck
    @array = []
    @counter = 0
  end

  def current_card
    @deck.first
  end

  def guesses
    @array
  end

  def record_guess(hash_value)
    arr_val = hash_value.values
    new_str = "#{arr_val[0]} of #{arr_val[1]}"
    guess = Guess.new(current_card,new_str)
    @array << guess
    guess
  end

  def current_card
    @deck.first
  end
end

card1 = Card.new(3, 'Hearts')
card2 = Card.new(10, 'Spades')
card3 = Card.new(2, 'Hearts')
round = Round.new([card1, card2, card3])

p round.record_guess({value: "3", suit: "Hearts"})
# p round.guesses
