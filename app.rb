require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  # this doesn't run the code block, it just sets the variable before each page is loaded?
  # it prevents you from having to declare "@game = Game.instance" at the start of each route
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.arr.last)
    redirect '/winner' if @game.arr.first.hp == 0
    erb :attack_confirm
  end

  get '/winner' do
    erb :winner
  end

  run! if app_file == $0
end
