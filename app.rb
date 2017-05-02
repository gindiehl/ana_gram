require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram')
require('pry')


get('/') do
  erb(:index)
end

get('/result') do
  input1 = params.fetch('input1')
  input2 = params.fetch('input2')

  words = String.new

  if(words.actual_word?(input1, input2))
    if words.is_anagram?(input1, input2)
      @result = 'these words are anagrams'
      if words.is_palindrome?(input1, input2)
        @result = 'these words are anagrams and palindromes'
      end
    elsif words.is_antigram?(input1, input2)
      @result = 'these words are antigrams'
    end
  else
    @result = 'please enter actual words'
  end
    erb(:result)
end
