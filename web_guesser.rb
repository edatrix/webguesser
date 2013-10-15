require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

def check_guess(guess)
  if guess == number
    message = "You got it!"
  elsif guess > number + 5
    message = " you are way too high"
  else guess < number - 5
    message = "tooooooo loooooow"
  end
end

get'/' do
  erb :index, :locals => {:number => number}
  params["guess"].to_i
  message = check_guess(guess)
end
