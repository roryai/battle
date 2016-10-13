require 'player'

describe Player do
  subject(:player) {described_class.new("Rory")}

  describe '#initialize' do
    it 'stores name as an attribute'do
      player_1 = Player.new("Dio")
      expect(player_1.name).to eq("Dio")
    end

    describe '#hit_points' do
      it 'reduces player 2 HP by 10' do
        player_2 = Player.new("Dio")
        expect {player.attack(player_2)}.to change{player_2.hp}.by(-10)
      end
    end


  end
end


# , focus: true
