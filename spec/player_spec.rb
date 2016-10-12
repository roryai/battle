require 'player'

describe Player do
  subject(:player) {described_class.new}

  describe '#initialize' do
    it 'stores name as an attribute' do
      player_1 = Player.new("Dio")
      expect(player_1.name).to eq("Dio")
    end
  end
end
