require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    p @name1 = params[:player1]
    p @name2 = params[:player2]
    erb :names
  end


  run! if app_file == $0
end



get '/' do
  "value = " << session[:value].inspect
end

get '/:value' do
  session['value'] = params['value']
end
