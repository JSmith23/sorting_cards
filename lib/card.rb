class Card
  attr_reader :value,
              :suit
  def initialize(value,suit)
    @value = value
    @suit = suit
  end

end


card = Card.new(2,"Clubs")