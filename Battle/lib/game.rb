require_relative 'player'

class Game
  attr_reader :player1, :player2, :attacker

  def initialize(player_name_1, player_name_2)
    @player1 = Player.new(player_name_1)
    @player2 = Player.new(player_name_2)
    @attacker = player1
  end

  def attack
    (attacker == player1) ? player = player2 : player = player1
    player.gets_attacked
  end

  def switch_attacker
    (attacker == player1) ? @attacker = player2 : @attacker = player1
  end
end
