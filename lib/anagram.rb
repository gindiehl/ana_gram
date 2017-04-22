class String

  define_method :is_anagram? do |input|
    self.downcase.split('').sort == input.downcase.split('').sort
  end

  define_method :is_palindrome? do |input|
    self.downcase.reverse == self.downcase
  end

  define_method :is_word? do |input|
    output = false
    words = self.downcase.split('')
    words.each() do |word|
      if word.include?("a") | word.include?("e") | word.include?("i") | word.include?("o") | word.include?("u") | word.include?("y")
        output = true
      end
    end
    output
  end

  define_method :is_antigram? do |input|
    self.downcase.split('').sort != input.downcase.split('').sort
  end

  define_method :is_clean? do |input|
    scrubbed_input = self.downcase.gsub!(/[^a-zA-Z]/, '')
    scrubbed_input
  end

end
