require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  # @a = params.fetch('a').to_f()
  # @b = params.fetch('b').to_f()
  # @c = params.fetch('c').to_f()
  # @result = Triangle.new(@a, @b, @c).type()
  erb(:results)
end
