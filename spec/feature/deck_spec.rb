require "test_helper"
require "deck"

describe Deck do
  before do
    @deck = Deck.new
    @c = @deck.cards
  end

  it "has 52 cards" do
    @deck.cards.length.must_equal 52
  end

  it "has 13 cards of each suit" do
    Deck::Suits.map do |s|
     @c.count { |card| card.suit == s }.must_equal 13
    end
  end

  it "has 4 cards of each rank" do
    Deck::Ranks.map do |r|
     @c.count { |card| card.rank == r }.must_equal 4
    end
  end
end