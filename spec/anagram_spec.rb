require('rspec')
require('anagram')

describe('String#is_anagram?') do

  it('checks if words are anagrams') do
    expect("art".is_anagram?("rat")).to(eq(true))
  end
  it('checks if words are anagrams regardless of case') do
    expect("aRt".is_anagram?("rAt")).to(eq(true))
  end
end
