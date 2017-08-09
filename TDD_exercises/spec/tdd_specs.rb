require 'tdd'
require 'rspec'

describe '#my_uniq' do
  it 'should take an array and remove dups' do
    expect(my_uniq([1, 1, 2, 2, 3, 3])).to eq([1, 2, 3])
  end
end
