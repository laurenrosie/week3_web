require 'game'

describe Game do

  subject(:game) {described_class.new("player1", "player2")}

  describe '#attack' do
    it "takes one parameter" do
      expect(subject).to respond_to(:attack)
    end
  end

  describe '#attacker' do
    it "returns name of current player attacking" do
      expect(game.attacker.name).to eq "player1"
    end
  end

  describe '#switch_attacker' do
    it 'changes attacker player 1 to attacker player 2' do
      game.switch_attacker
      expect(game.attacker).to eq game.player2
    end
  end
end
