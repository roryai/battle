class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def damage
    @hp -= 10
  end

  def attack(opponent)
    opponent.damage
  end

end
