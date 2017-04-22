class String
  define_method :is_anagram? do |input|
    self.downcase.split('').sort == input.downcase.split('').sort
  end

  define_method :is_palindrome? do |input|
    self.downcase.reverse == self.downcase
  end
end  
