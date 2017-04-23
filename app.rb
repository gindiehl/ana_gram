require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram')


get('/') do
  @title = "Anagram, 'Antigram', or Palindrome?"
  erb(:index)
end

get('/result') do
  @phrase = params.fetch('phrase')
  
  erb(:result)
end
