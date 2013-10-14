require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get'/' do
  "the secret number is #{number}"
end
