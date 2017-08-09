VALUE = %w[A K Q J 10 9 8 7 6 5 4 3 2]
SUITE = %w[S H D C]

class Deck
  attr_reader :unused_cards,:used_cards

  def initialize
    @unused_cards = []
    @used_cards = []
  end

  def populate
    4.times do |i|  # .times implicitly returns # of times
      VALUE.each do |value|
        @unused_cards << "#{value}-#{SUITE[i]}"
      end
    end
    @unused_cards # needed
  end
end
