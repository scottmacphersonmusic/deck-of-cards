require 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = generate_cards
  end

  Suits = [:heart, :spade, :club, :diamond]
  Ranks = (2..10).to_a.map(&:to_s) + ['Jack', 'Queen', 'King', 'Ace']

  def shuffle!
    @cards.shuffle!
  end

  def deal_card
    @cards.pop
  end

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
