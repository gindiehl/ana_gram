class String

  define_method(:actual_word?) do |input1, input2|
    if input1.length !=0 && input1.match((/[aeiouy]+/i))
      input1 = input1.downcase.gsub!(/[^a-zA-Z]/, '')
      true
    elsif input2.length !=0 && input2.match((/[aeiouy]+/i))
      input2 = input2.downcase.gsub!(/[^a-zA-Z]/, '')
    else
      false
    end
  end

  define_method(:is_anagram?) do |input1, input2|
    input1.downcase.split('').sort == input2.downcase.split('').sort
  end

  define_method(:is_palindrome?) do |input1, input2|
    input1.reverse == input2
  end

  define_method(:is_antigram?) do |input1, input2|
    array1 = input1.split('')
    array2 = input2.split('')
    intersected_array = array1 & array2
    if intersected_array.length == 0
      return true
    end
  end
end
