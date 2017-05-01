require('rspec')
require('anagram')

words = String.new

describe 'String#actual_word?' do
  it "returns true if words contain a vowel" do
    expect(words.actual_word?("krill", "trill")).to(eq(true))
  end
  it "returns false if word does not contain a vowel" do
    expect(words.actual_word?("mm", "nn")).to(eq(false))
  end
  it "removes non-alphabetical characters and white space" do
    expect(words.actual_word?('art', 'rat')).to(eq(true))
  end
end

describe 'String#is_anagram?' do
  it "returns true for words that are anagrams" do
    expect(words.is_anagram?("art", "rat")).to(eq(true))
  end
  it "returns true for words that are anagrams regardless of case" do
    expect(words.is_anagram?("rAt", "arT")).to(eq(true))
  end
end

describe 'String#is_palindrome?' do
  it 'returns true for a words that are palindromes' do
    expect(words.is_palindrome?("now", "won")).to(eq(true))
  end
end

describe 'String#is_antigram?' do
  it 'returns true for words that are antigrams' do
    expect(words.is_antigram?("bye", "hi")).to(eq(true))
  end
end
