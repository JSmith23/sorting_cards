require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'

class RoundTest < MiniTest::Test
  def test_it_exists
    round = Round.new('test')
    assert_instance_of Round, round
  end

  def test_if_it_is_current_card
    round = Round.new(['card1', 'card2'])
    assert_equal 'card1', round.current_card
  end
end
