require('rspec')
require('anagram')

describe('String#is_word?') do
  it('checks that input is a word by checking to see that user input contains vowels') do
    expect("tree".is_word?("e")).to(eq(true))
  end
  it('checks that input is not a word if input does not contain vowels') do
    expect("bd".is_word?("a")).to(eq(false))
  end
end

describe('String#is_clean?') do
  it('checks that input does not contain spaces or punctuation') do
    expect("g.ill".is_clean?("_")).to(eq("gill"))
  end
end

describe('String#is_anagram?') do
  it('checks if words are anagrams') do
    expect("art".is_anagram?("rat")).to(eq("Anagram!"))
  end
  it('checks if words are anagrams regardless of case') do
    expect("aRt".is_anagram?("rAt")).to(eq("Anagram!"))
  end
end

describe('String#is_palindrome?') do
  it('checks to see if words that are anagrams are also palindromes') do
    expect("dad".is_palindrome?("dad")).to(eq("Palindrome!"))
  end
end

describe('String#is_antigram?') do
  it('checks that input is an "antigram"') do
    expect("hi".is_antigram?("bye")).to(eq("Antigram!"))
  end
end
