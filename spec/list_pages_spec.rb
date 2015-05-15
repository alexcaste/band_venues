require('spec_helper')
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'adding list all venues path', :type => :feature do
  it 'shows a user all venues in database' do
    avalon = Venue.create({venue_name: "Avalon"})
    the_mayan = Venue.create({venue_name: "The Mayan"})
    black_rock_desert = Venue.create({venue_name: "Black Rock Desert"})
    visit '/'
    expect(page).to have_content("Avalon")
  end
end

describe 'adding list all bands path', :type => :feature do
  it 'shows a user all bands in database' do
    john_digweed = Band.create({band_name: "John Digweed"})
    markus_schulz = Band.create({band_name: "Markus Schulz"})
    alex_caste = Band.create({band_name: "Alex Caste"})
    visit '/'
    expect(page).to have_content("John Digweed")
  end
end
