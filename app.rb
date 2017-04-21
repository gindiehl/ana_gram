require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram')


get('/') do
  erb(:index)
end

# get('/anagram') do
#   @result = params.fetch('phrase').anagram()
#   erb(:anagram)
# end
