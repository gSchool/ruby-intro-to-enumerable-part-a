def min(numbers)
  lowest_number = 1000000000

  numbers.each do |number|
    unless lowest_number < number
      lowest_number = number
    end
  end

    if lowest_number == 1000000000
      nil
    else
      lowest_number
    end
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
