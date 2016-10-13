require 'spec_helper'

describe Game do

  player_1 = Player.new("Elizabeth")
  player_2 = Player.new("Dio")
  game = Game.new(player_1, player_2)

  context '#turns' do

    it 'expects turn status to switch upon attack' do
      game.attack(game.player_2)
      expect(game.name(game.arr[0])).to eq game.name(game.player_2)
    end

  end

end
