require './lib/card'

class Guess
  attr_reader :card,
              :response
  def initialize(card, response)
    @card = card
    @response = response
  end

  def correct?
    @response == "#{@card.instance_variable_get('@value')}" + ' of ' + "#{@card.instance_variable_get('@suit')}"
  end

  def feedback
    if correct?
      return 'Correct!'
    else
      return 'Incorrect.'
    end
  end
end

card = Card.new('11', 'Hearts')
guess = Guess.new(card, '10 of Hearts')
