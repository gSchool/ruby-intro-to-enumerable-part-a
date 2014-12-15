def shortest_word(words)
  shortest_word = 'a' * 30
  words.each do |word|
    if word.length < shortest_word.length
      shortest_word = word
    end
  end
  return nil if shortest_word == 'a' * 30
  shortest_word
end


# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#shortest_word' do
  it 'returns the shortest word in an array' do
    input = ['a', 'big', 'black', 'bear', 'is', 'running']

    expect(shortest_word(input)).to eq('a')
  end

  it 'returns the first shortest word if there are multiples' do
    input = ['fa', 'la']

    expect(shortest_word(input)).to eq('fa')
  end

  it 'returns nil when given an empty array' do
    expect(shortest_word([])).to eq(nil)
  end
end
