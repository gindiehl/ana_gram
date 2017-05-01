# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the anagram, antigram, palindrome path', {:type => :feature}) do
#   it('takes user phrase and returns result for whether input is anagram, "antigram", or palindrome') do
#     visit('/')
#     fill_in('input1', :with => 'art')
#     fill_in('input2', :with => 'rat')
#     click_button('Submit')
#     expect(page).to have_content("these words are anagrams")
#   end
# end
