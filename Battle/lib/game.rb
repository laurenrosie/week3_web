require_relative 'player'

class Game
  attr_reader :player1, :player2
  attr_accessor :attacker

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @attacker = player1
  end
  def attack(player)
    player.gets_attacked
  end
end
