def count_words_longer_than(words, length)

  result = 0

  new_array = []

  words.each do |word|
    if word.length > length
      new_array << word
    end
    result = new_array.count
  end

  result

end

# def count_words_longer_than(words, length)
# count = 0
#
# words.each do |word|
#   if word.length > length
#     count += 1
#   end
# end
# count
# end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#count_words_longer_than' do
  it 'returns the count of words that are longer than the specified max' do
    expect(count_words_longer_than(['a', 'big', 'black', 'bear', 'is', 'running'], 3)).to eq(3)
    expect(count_words_longer_than(['a', 'big', 'black', 'bear', 'is', 'running'], 2)).to eq(4)
    expect(count_words_longer_than(['a', 'big', 'black', 'bear', 'is', 'running'], 10)).to eq(0)
  end

  it 'returns 0 for an empty array' do
    expect(count_words_longer_than([], 0)).to eq(0)
  end
end
