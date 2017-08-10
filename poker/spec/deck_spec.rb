require 'deck'
require 'rspec'

describe Deck do
  subject(:deck) { Deck.populate } # memoization => not creating a new deck
  describe '#initialize' do
    it "should have a deck of cards" do
      expect(deck.unused_cards).to be_a(Array)
    end

    it "should create an empty arr of used cards" do
      expect(deck.discard_pile).to eq([])
    end
  end

  describe "populate" do
    it "should populate the deck with 52 cards" do
      expect(deck.unused_cards.length).to eq(52)
    end

    it "should have thirteen hearts" do #.to_s returns card's string value.
      hearts = deck.unused_cards.count { |el| el.to_s.include?('H') }
      expect(hearts).to eq(13)
    end # could test for other 3 suites

    it "should fill the deck with card objects" do
      card = deck.unused_cards.first
      expect(card.class).to eq(Card)
    end
  end

  describe "#shuffle_deck" do
    it "should shuffle the populated deck" do
      expect(deck.unused_cards).not_to eq(deck.shuffle_deck)
    end
  end

  describe '#count' do
    it "should return the # of cards left in deck" do
      expect(deck.count).to eq(52)
    end
  end

  describe '#take' do
    it "should take a card from the deck" do
      deck.take
      expect(deck.count).to eq(51)
    end
  end

  describe '#discard' do # create a dummy card that deck adds discards
    let (:card) { double("card") }

    it "should add a card to the discard pile" do
      deck.discard(card)
      expect(deck.discard_pile).to include(card)
    end
  end
end
