require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram, antigram, palindrome path', {:type => :feature}) do
  it('takes user phrase and returns result for whether input is anagram, "antigram", or palindrome') do
    visit('/')
    fill_in('phrase', :with => 'dad')
    click_button('Compare')
    expect(page).to have_content("This is an anagram")
  end
end
