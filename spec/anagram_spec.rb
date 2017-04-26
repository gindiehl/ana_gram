require('rspec')
require('anagram')

word = String.new

describe 'String#actual_word?' do
  it "returns true if word has at least one vowel" do
    expect(word.actual_word?("krill")).to(eq(true))
  end
  it "returns false if word does not contain a vowel" do
    expect(word.actual_word?("mm")).to(eq(false))
  end
end

describe 'String#scrubbed_input' do
  it "downcases and removes non-alphabetical characters and white space from 'Wet Sap!'" do
    expect(word.scrubbed_input("Wet Sap!")).to(eq("wetsap"))
  end
end

describe 'String#is_anagram?' do
  it "returns true for words that are anagrams" do
    expect(word.is_anagram?("art", "rat")).to(eq(true))
  end
  it "returns true for words that are anagrams regardless of case" do
    expect(word.is_anagram?("rAt", "arT")).to(eq(true))
  end
end
#
describe 'String#is_palindrome?' do
  it 'returns true for words that are palindromes' do
    expect(word.is_palindrome?("dad", "racecar")).to(eq(true))
  end
end

describe 'String#is_antigram?' do
  it 'returns true for words that are antigrams' do
    expect(word.is_antigram?("bye", "hi")).to(eq(true))
  end
end
