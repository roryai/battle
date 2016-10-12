require 'sinatra/base'

class Battle < Sinatra::Base

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
