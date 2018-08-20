require './lib/card'
require './lib/deck'


class Round
  attr_reader :deck
  def initialize(deck)
    @deck = deck
  end

  def current_card
    @deck.first 
  end
end

stack = Deck.new(['card1', 'card2'])
round = Round.new(stack)
