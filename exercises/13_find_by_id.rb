def find_by_id(array, id)
  result = {}
  if array == []
    result = nil
  else
    temp = []
    array.each do |hash|
      if id == hash[:id]
        temp << hash
      end
    end
    if temp == []
      result = nil
    else
      result = temp[0]
    end
  end
  result
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#find_by_id' do
  it 'returns the hash where the value for the id key matches the given id' do
    input = [
      {id: 3, name: 'English'},
      {id: 5, name: 'Spanish'},
      {id: 7, name: 'French'},
    ]

    expect(find_by_id(input, 5)).to eq({id: 5, name: 'Spanish'})
  end

  it 'returns nil when given an empty array' do
    expect(find_by_id([], 10)).to eq(nil)
  end

  it 'returns nil when given an id that does not exist in the array' do
    input = [ {id: 3, name: 'English'} ]

    expect(find_by_id(input, 8)).to eq(nil)
  end
end
