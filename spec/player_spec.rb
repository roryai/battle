require 'player'

describe Player do
  subject(:player) {described_class.new("Elizabeth")}
  player_1 = Player.new("Dio")
  player_2 = Player.new("Dio")
  game = Game.new(player_1, player_2)

  describe '#initialize' do
    it 'stores name as an attribute'do

      expect(player_1.name).to eq("Dio")
    end

    describe '#hit_points' do
      it 'reduces player 2 HP by 10' do

        expect {game.attack(game.player_2)}.to change{game.hitpoints(game.player_2)}.by(-10)
      end
    end


  end
end


# , focus: true
