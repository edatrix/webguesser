require 'sinatra'
require 'sinatra/reloader'

set :secret, rand(100)
# number = rand(100)

get '/' do
  guess = params[:guess].to_i
  message = feedback(settings.secret, guess)
  # if guess == number
  #   message = "correct!"
  # else
  #   message = "not even close!"
  # end
  erb :index, :locals => {:secret => settings.secret,
                          :guess => guess,
                          :message => message}
  end

  def feedback(number, guess)
    if guess == number
      "Correct!"
    elsif guess > number + 5
      "way too high"
    elsif guess > number
      "too high"
    elsif guess < number - 5
      "way too low"
    else guess < number
      "your guess is too low"
    end
  end
