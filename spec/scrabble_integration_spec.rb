require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe('scrabble scores',{:type => :feature}) do
  it('will give you the scrabble scores for the given word') do
    visit('/')
    fill_in('score',:with => 'get me the score for this nonsense')
    click_button('Submit')
    expect(page).to have_content("42")
  end
end
