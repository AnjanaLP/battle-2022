require 'player'

describe Player do
  subject(:alice)   { described_class.new("Alice") }

  describe '#name' do
    it "returns the player's name" do
      expect(alice.name).to eq "Alice"
    end
  end
end
