require 'deck'
require 'rspec'


describe Deck do
  subject(:deck) { Deck.new }
  describe '#initialize' do
    it "should create an empty arr of unused cards" do
      expect(deck.unused_cards).to eq([])
    end

    it "should create an empty arr of used cards" do
      expect(deck.used_cards).to eq([])
    end
  end

  describe "populate" do
    it "should populate the deck with 52 cards" do
      expect(deck.populate.length).to eq(52)
    end

    it "should have thirteen hearts" do
      hearts = deck.populate.count { |el| el.include?('H') }
      expect(hearts).to eq(13)
    end # could test for other 3 suites
  end
end
