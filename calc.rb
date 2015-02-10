require 'sinatra'
require 'sinatra/reloader'
require 'better_errors'


configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get "/add/:num1/:num2" do
  sum = params[:num1].to_i + params[:num2].to_i
  "The sum is #{sum}"
end

get "/subtr/:num1/:num2" do
  leftover = params[:num1].to_i - params[:num2].to_i
  "The leftover is #{leftover}"
end

get "/mult/:num1/:num2" do
  prod = params[:num1].to_i * params[:num2].to_i
  "The product is #{prod}"
end

get "/div/:num1/:num2" do
  
  begin
  	quotient = params[:num1].to_i / params[:num2].to_i
  	"The quotient is #{quotient}"
  rescue ZeroDivisionError
  	"Don't divide by zero!!"
  end 
  
end