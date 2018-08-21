require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < MiniTest::Test
  def test_it_exists
    card = Card.new('10', 'Hearts')
    guess = Guess.new(card, '10 of Hearts')
    assert_instance_of Guess, guess
  end

  def test_it_has_attributes
    card = Card.new('10', 'Hearts')
    guess = Guess.new(card, 'Ace of Spades')
    assert_equal 'Ace of Spades', guess.response
    assert_equal card, guess.card
  end

  def test_check_card_against_suit_and_value
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)
    assert true
  end

  def test_feedback_if_correct_is_true
    card = Card.new('10', 'Hearts')
    guess = Guess.new(card, '10 of Hearts')
    assert_equal 'Correct!', guess.feedback
  end

  def test_check_card_against_suit_and_value_is_false
    card = Card.new('10', 'Hearts')
    guess = Guess.new('2 of Hearts', card)
    refute false
  end

  def test_feedback_if_correct_is_false
    card = Card.new('10', 'Hearts')
    guess = Guess.new(card, '2 of Hearts')
    assert_equal 'Incorrect.', guess.feedback
  end
end
