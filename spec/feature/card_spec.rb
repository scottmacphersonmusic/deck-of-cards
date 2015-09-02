require "test_helper"
require "card"

describe Card do
  before do
    @card = Card.new
  end

  it "has a suit" do
    @card.must_respond_to :suit
  end

  it "has a rank" do
    @card.must_respond_to :rank
  end
end
