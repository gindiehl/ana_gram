class String
  define_method :is_anagram? do |input|
    self.downcase.split('').sort == input.downcase.split('').sort
  end

end
