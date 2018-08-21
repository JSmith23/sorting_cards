require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'

class RoundTest < MiniTest::Test
  def test_it_exists
    round = Round.new('test')
    assert_instance_of Round, round
  end

  def test_if_it_is_current_card
    card1 = Card.new(3, 'Hearts')
    card2 = Card.new(10, 'Spades')
    card3 = Card.new(2, 'Hearts')
    round = Round.new([card1, card2, card3])
    assert_equal card1, round.current_card
  end

  def test_record_guess
    card1 = Card.new(3, 'Hearts')
    card2 = Card.new(10, 'Spades')
    card3 = Card.new(2, 'Hearts')
    round = Round.new([card1, card2, card3])
    assert_equal 
  end
end
