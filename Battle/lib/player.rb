class Player

  attr_reader :name, :points

  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @points = 60
  end

  def attack(player)
    player.gets_attacked
  end

  def gets_attacked
    @points -= DEFAULT_DAMAGE
  end

end
