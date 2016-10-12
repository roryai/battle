require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p session[:player1] = params[:player1]
    p session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @name1 = session[:player1]
    @name2 = session[:player2]
    erb :play
  end

  run! if app_file == $0
end
