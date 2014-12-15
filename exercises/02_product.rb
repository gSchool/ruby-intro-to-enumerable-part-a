def product(numbers)
  no_numbers = true
  numbers.each do |number|
    if number
      no_numbers = false
    end
  end
  unless no_numbers
    product = 1
    numbers.each do |number|
      product *= number
    end
  else
    product = nil
  end
  product
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#product' do
  it 'multiplies all of the numbers in the array' do
    expect(product([1,2,7])).to eq(14)
    expect(product([10])).to eq(10)
    expect(product([1,2,-3])).to eq(-6)
  end

  it 'returns nil for empty arrays' do
    expect(product([])).to eq(nil)
  end
end
