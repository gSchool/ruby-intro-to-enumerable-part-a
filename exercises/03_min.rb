def min(numbers)
  min = nil

  numbers.each do |number|
    min = number if min.nil? || number < min
  end

  min
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#min' do
  it 'returns the lowest number in the array' do
    expect(min([7,5,12])).to eq(5)
    expect(min([10])).to eq(10)
  end

  it 'returns nil for empty arrays' do
    expect(min([])).to eq(nil)
  end
end
