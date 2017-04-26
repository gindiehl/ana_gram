class String

  # def grand_method

  def actual_word? (user_input)
    user_input.match?(/[aeiouy]+/i)
  end

  def scrubbed_input (user_input)
    output = user_input.downcase.gsub!(/[^a-zA-Z]/, '')
    output
  end


  def is_anagram? (input1, input2)
    self.downcase.split('').sort == input2.downcase.split('').sort
    return true
  end


  def is_palindrome? (input1, input2)
    self.downcase.reverse == input2.downcase
    return true
  end

  def is_antigram? (input1, input2)
    self.downcase.split('').sort != input2.downcase.split('').sort
    return true
  end

end
