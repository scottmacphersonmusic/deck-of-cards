require 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = generate_cards
  end

  SUITS = [:heart, :spade, :club, :diamond]
  RANKS = (2..10).to_a.map(&:to_s) + %w(Jack, Queen, King, Ace)

  def shuffle!
    @cards.shuffle!
  end

  def deal_card
    @cards.pop
  end

  private

  def generate_cards
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(suit, rank)
      end
    end
    cards
  end
end
