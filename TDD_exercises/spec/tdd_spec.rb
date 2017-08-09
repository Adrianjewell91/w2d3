require 'tdd'
require 'rspec'

describe '#my_uniq' do
  it 'should take an array and remove dups' do
    expect(my_uniq([1, 1, 2, 2, 3, 3])).to eq([1, 2, 3])
  end
end

describe "Array" do
  describe "#to_sum" do
    it "should return an empty array if length < 2 elements" do
      expect([1].two_sum).to eq([])
    end

    it "should return the correct indices of sum zero pairs" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end
end


describe '#my_transpose' do

  before(:each) do
  end

  it "should return an array with same # of elements as argument array" do
    rows = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    col = [[0,3,6], [1,4,7], [2,5,8]]
    expect(my_transpose(rows)).to eq(col)
  end

end
