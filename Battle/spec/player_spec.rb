require 'player'

describe Player do

  subject(:player){described_class.new("Ross")}
  describe "#name" do
    it "returns the name" do
      expect(player.name).to eq "Ross"
    end
  end

  describe '#points' do
    it "returns the number of points player has" do
      expect(player.points).to eq 60
    end
  end

  describe '#attack' do
    it "takes one parameter" do
      expect(player).to respond_to(:attack).with(1).argument
    end
  end

  describe '#gets_attacked' do
    it "deducts points from player" do
      expect {player.gets_attacked}.to change {player.points}.by -Player::DEFAULT_DAMAGE
    end
  end

end
