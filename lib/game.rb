# require 'player'

class Game

  attr_reader :player_1, :player_2, :current_player, :arr

  #class method below
  def self.create(player_1, player_2)
    # class instance variable below. Only accessible to other class methods.
    @game_ins_var = Game.new(player_1, player_2)
  end

  # this is an attribute reader for the class instance variable
  def self.instance
    @game_ins_var
  end

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
