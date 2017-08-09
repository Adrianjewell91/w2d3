require 'card'
require 'rspec'

describe Card do
  subject(:card) { Card.new("A-S") } # create test subj
  describe '#initialize' do
    it 'card should be given a value' do
      expect(card.face_value).to eq("A-S")
    end
  end

  describe '#to_s' do
    it 'should return value of card' do
      expect(card.to_s).to eq("A-S")
    end
  end

  # could TDD for initialize
end
