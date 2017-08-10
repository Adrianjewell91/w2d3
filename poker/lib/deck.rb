VALUE = %w[A K Q J 10 9 8 7 6 5 4 3 2]
SUITE = %w[S H D C]

class Deck
  attr_reader :unused_cards, :discard_pile

  def self.populate
    cards = []
    4.times do |i|  # .times implicitly returns # of times
      VALUE.each do |value|
        cards << "#{value}-#{SUITE[i]}"
      end
    end
    Deck.new(cards) # needed
  end

  def initialize(cards) #Deck.new only calls initialize
    @unused_cards = cards
    @discard_pile = []
  end

  def shuffle_deck
    @unused_cards.shuffle
  end

  def count
    @unused_cards.count
  end

  def take
    @unused_cards.shift
  end

  def discard(card)
    @discard_pile << card
  end
end
