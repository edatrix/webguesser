require 'sinatra'
require 'sinatra/reloader'

get '/' do
  secret_number = rand(100)
  erb :index, :locals => {:secret_number => secret_number}
end
