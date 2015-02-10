require 'sinatra'
require 'sinatra/reloader'
require "better_errors"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get "/" do
  raise "oops"
end
# our application's routes

	get '/quote/:tag' do
		# raise an error unless the tag is 'life'
		# because sinatra had some good life lessons for us all
		raise "tag must not be anything but 'life'" if params[:tag] != 'life'
			"You've requested a quote for tag: '#{params[:tag]}'"
	end


	get '/hi' do
		"Hi, I am Paris!"
	end

	get '/quote' do
		"the tongue is very light but few can hold it."
	end

	get '/cat' do
		"the tongue is very pink and rough."
	end

	get '/carpediem/:tag' do
		"You've requested a quote for tag: '#{params[:tag]}'"
	end


