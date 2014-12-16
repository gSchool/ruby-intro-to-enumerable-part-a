def all_empty?(strings)
  return true if strings.empty?
  #false
  strings.each do |string|
    return false unless string.nil? || string.empty?
  end
  return true
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#all_empty?' do
  it 'returns true if all the elements are empty' do
    input = ['', '', nil]

    expect(all_empty?(input)).to eq(true)
  end

  it 'returns false if words are present' do
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
