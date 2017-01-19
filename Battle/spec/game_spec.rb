require 'game'

describe Game do
  describe '#attack' do
    it "takes one parameter" do
      expect(subject).to respond_to(:attack).with(1).argument
    end
    
  end
end
