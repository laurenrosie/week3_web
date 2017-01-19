require 'game'

describe Game do

  let(:player1) {double Player}
  let(:player2) {double Player}
  subject(:game) {described_class.new(player1, player2)}

  describe '#attack' do
    it "takes one parameter" do
      expect(subject).to respond_to(:attack).with(1).argument
    end

  end
end
