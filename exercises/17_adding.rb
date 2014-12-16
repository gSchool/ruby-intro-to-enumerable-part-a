

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#adding' do

  it 'returns single value for a given array and starting value' do
    expect(reduce([1,2,3], 0)).to eq(6)
  end

  it 'returns values that can be arrays' do
    expect(array_reduce(["big", "brown", "bear"], [])).to eq(["BIG", "BROWN", "BEAR"])
  end

  it 'returns the default value when given an empty array' do
    expect(default_reduce([], :foo)).to eq(:foo)
  end

end
