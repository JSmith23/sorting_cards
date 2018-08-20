require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'

class DeckTest < MiniTest::Test
  def test_it_exists
    deck = Deck.new(['Hello', 'There'])
    assert_instance_of Deck, deck
  end

  def test_it_has_attributes
    deck = Deck.new(['Hello', 'There'])
    assert_equal ['Hello', 'There'], deck.cards
  end

  def test_number_of_elements_in_deck
    deck = Deck.new(['Hello', 'There'])
    assert_equal 2, deck.count
  end
end
