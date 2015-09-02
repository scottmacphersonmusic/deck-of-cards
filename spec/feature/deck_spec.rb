require "test_helper"
require "deck"

describe Deck do
  before do
    @deck = Deck.new
  end

  it "has 52 cards" do
    @deck.cards.length.must_equal 52
  end

  Suits = [:heart, :spade, :club, :diamond]

  it "has 13 cards of each suit" do
    c = @deck.cards
    Suits.map do |s|
      c.count { |card| card.suit == s }.must_equal 13
    end
    # c.count { |card| card.suit == :heart }.must_equal 13
  end

  # it "has 4 cards of each rank" do

  # end
end
