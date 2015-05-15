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
  band = Band.find(band_id)
  band.delete
  redirect'/'
end

delete '/venue/:id' do
  venue_id = params.fetch('id')
  venue = Venue.find(venue_id)
  venue.delete
  redirect'/'
end

get '/band/:id' do
  @band = Band.find(params.fetch('id'))
  @venues = Venue.all
  @all_band_venues = @band.venues
  @band_venues = @all_band_venues.order(:venue_name)
  erb(:band)
end

patch '/band/:id' do
  venues=[]
  band_id = params.fetch('id')
  band = Band.find(band_id)
  if params[:venue_ids]
    venues = params.fetch("venue_ids")
    venues.each do |venue|
      if venue.to_i != 0
        venue = Venue.find(venue.to_i)
        band.venues.push(venue)
      end
    end
    redirect '/band/'.concat(band_id.to_s)
  end
end

delete '/band/delete/:id' do
  venue_id = params.fetch('id')
  band_id = params.fetch('band').to_i
  venue = Venue.find(venue_id)
  band = Band.find(band_id)
  band.venues.delete(venue)
  redirect '/band/'.concat(band_id.to_s)
end
