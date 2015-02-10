require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'
require './greeter.rb'
also_reload './greeter.rb'
# before filter
before do
  @greeter = Greeter.new
end

# our application's routes
get '/hi' do
  @greeter.greet
end

# return quotes matching a tag
get '/quote/:tag' do
  @greeter.quote params[:tag]
end

# default /quote route
get '/quote' do
  @greeter.quote
end

get '/photo' do
	x = 1 + rand(10)
	send_file "./photos/#{x}.jpeg"
end

