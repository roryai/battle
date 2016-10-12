require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :names
  end


  run! if app_file == $0
end
