require 'card'
require 'rspec'

describe Card do
  subject(:card) { Card.new("A-S") } # create test subj
  describe '#initialize' do
    it 'card should be given a value' do
      expect(Card.face).to eq("A-S")
    end
  end
end
