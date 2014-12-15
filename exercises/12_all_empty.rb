def all_empty?(words)
  result = true
  count = 0
  words.each do |word|
    if word == ""
      count += 0
    elsif word == nil || word.length != 0
      count += 1
    end
  end
  if count == 0
    status = true
  else
    status = false
  end
  status
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#all_empty?' do
  it 'returns true if all the elements are empty' do
    input = ['', '', '']

    expect(all_empty?(input)).to eq(true)
  end

  it 'returns true if all the elements are empty' do
    input = ['a', '', 'b']

    expect(all_empty?(input)).to eq(false)
  end

  it 'returns false if any word is present' do
    input = [nil, '', 'la', nil]

    expect(all_empty?(input)).to eq(false)
  end

  it 'returns true when given an empty array' do
    expect(all_empty?([])).to eq(true)
  end
end
