require 'game'

describe Game do

  let(:player1) {double Player, :name => "Ross" }
  let(:player2) {double Player, :name => "Lauren"}
  subject(:game) {described_class.new(player1, player2)}

  describe '#attack' do
    it "takes one parameter" do
      expect(subject).to respond_to(:attack).with(1).argument
    end
  end

  describe '#attacker' do
    it "returns name of current player attacking" do
      expect(game.attacker).to eq player1
    end
  end
end
