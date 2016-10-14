require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game.attack($game.arr.last)
    p redirect '/winner' if $game.arr.first.hp == 0
    erb :attack_confirm
  end

  get '/winner' do
    erb :winner
  end

  run! if app_file == $0
end
