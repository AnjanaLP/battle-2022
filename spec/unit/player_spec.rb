require 'player'

describe Player do
  subject(:alice)   { described_class.new("Alice") }
  subject(:bob)     { described_class.new("Bob") }

  describe '#name' do
    it "returns the player's name" do
      expect(alice.name).to eq "Alice"
    end
  end

  describe '#hit_points' do
    it "returns the player's hit_points" do
      expect(alice.hit_points).to eq described_class::STARTING_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it "reduces the player's hit points" do
      expect { bob.receive_damage }.to change { bob.hit_points }.by(-described_class::DAMAGE_POINTS)
    end
  end
end
