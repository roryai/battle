require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    $name1 = session[:player1]
    $name2 = session[:player2]
    erb :play
  end

  get '/attack' do
    erb :attack_confirm
  end

  run! if app_file == $0
end
