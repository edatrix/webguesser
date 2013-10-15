require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hi.  the random number is #{rand(100)}"
end
