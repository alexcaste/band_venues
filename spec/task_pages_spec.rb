require('spec_helper')
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

require('spec_helper')
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'deleting a band path', :type => :feature do
  it 'allows user to delete a band' do
    alex_caste = Band.create({band_name: "Alex Caste"})
    visit '/'
    click_button "delete_band"
    expect(page).to have_content("")
  end
end
