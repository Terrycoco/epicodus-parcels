require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the routing behavior of our app', {:type => :feature}) do
  it('take 4 inputs on one page and will return on another page the cost to ship') do
    visit('/')
    fill_in('width', :with => 1)
    fill_in('height', :with => 1)
    fill_in('depth', :with => 1)
    fill_in('weight', :with => 12)
    click_button('Go')
    expect(page).to have_content('$25.80')
  end
end
