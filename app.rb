require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get '/' do
  @allbands = Band.all
  @bands = @allbands.order(:band_name)
  @allvenues = Venue.all
  @venues = @allvenues.order(:venue_name)
  erb(:index)
end

post '/add_venue' do
  Venue.create({venue_name: params.fetch('venue_name')})
  redirect '/'
end

post '/add_band' do
  Band.create({band_name: params.fetch('band_name')})
  redirect '/'
end

delete '/band/:id' do
  band_id = params.fetch('id')
  band = Band.find(id)
  band.delete
  redirect'/'
end

delete '/venue/:id' do
  venue_id = params.fetch('id')
  venue = Venue.find(id)
  venue.delete
  redirect'/'
end
