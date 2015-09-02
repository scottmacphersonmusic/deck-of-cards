require 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = generate_cards
  end

  Suits = [:heart, :spade, :club, :diamond]
  Ranks = 1..13

  private

  def generate_cards
    cards = []
    Suits.each do |suit|
      Ranks.each do |rank|
        cards << Card.new(suit, rank)
      end
    end
    cards
  end
end
