# require('capybara/rspec')
# require('./app')
#
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the routing behavior of our app', {:type => :feature}) do
#   it('take three inputs on one page and will return on another page if valid triangle and if so what type.') do
#     visit('/')
#     fill_in('a', :with => 3)
#     fill_in('b', :with => 4)
#     fill_in('c', :with => 5)
#     click_button('Go')
#     expect(page).to have_content('scalene')
#   end
# end
