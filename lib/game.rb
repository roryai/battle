# require 'player'

class Game

  attr_reader :player_1, :player_2, :current_player, :arr

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @arr = [@player_1, @player_2]
  end

  def attack(player)
    player.damage
    turn_switcher
  end

  def turn_switcher
      @arr.rotate!
  end

  def name(player)
    player.name
  end

  def hitpoints(player)
    player.hp
  end

end
