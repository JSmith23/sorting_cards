require 'minitest/autorun'
require 'minitest/autorun'
require './lib/guess'
require './lib/card'

class GuessTest < MiniTest::Test
  def test_it_exists
    card = Card.new("10","Hearts")
    guess = Guess.new("Ace of Spades",card)
    assert_instance_of Guess, guess
  end

  def test_it_has_attributes
    card = Card.new("10","Hearts")
    guess = Guess.new("Ace of Spades",card)
    assert_equal "Ace of Spades", guess.choice
  end
end
