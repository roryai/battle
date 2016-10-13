# require 'player'

class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def attack(player)
    player.damage

  end

  def name(player)
    player.name
  end

  def hitpoints(player)
    player.hp
  end

  def turn_switcher
    if    @current_player = player_1
          @current_player = player_2
    elsif @current_player = player_2
          @current_player = player_1
    end
  end

end
