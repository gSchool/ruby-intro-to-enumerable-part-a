def any_empty?(words)
  words.each do |word|
    if word.to_s.empty? # use ? when trying to get true or false as result; return true or false
      return true # return stops everything else in the method and then returns
                  # that value (so here it never makes it to false)
    end
  end
  false
end



# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#any_empty?' do
  it 'returns true if there are empty strings anywhere in the array' do
    input = ['a', '', 'b']

    expect(any_empty?(input)).to eq(true)
  end

  it 'returns true if there are nils anywhere in the array' do
    input = ['a', nil, 'b']

    expect(any_empty?(input)).to eq(true)
  end

  it 'returns false if all values are non-empty' do
    input = ['fa', 'la']

    expect(any_empty?(input)).to eq(false)
  end

  it 'returns false when given an empty array' do
    expect(any_empty?([])).to eq(false)
  end
end
