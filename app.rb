require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @width = params.fetch('width').to_f()
  @height = params.fetch('height').to_f()
  @depth = params.fetch('depth').to_f()
  @weight = params.fetch('weight').to_f()
  @result = Parcel.new(@width, @height, @depth, @weight).cost_to_ship()
  erb(:results)
end
