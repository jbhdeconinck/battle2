require 'player'

describe Player do
  let(:player_1) {described_class.new("Julien")}
  let(:player_2) {described_class.new("Rajeev")}

  it "provides player's name" do
      expect(player_1.name).to eq("Julien")
  end

  it "stores player's HP" do
    expect(player_1.hit_points).to eq(60)
  end

  describe "#receive_damage" do
    it "reduces hit points" do
      expect{player_1.receive_damage}.to change{player_1.hit_points}.by -10
    end
  end

  describe "#attack" do
    it "allows to cause damage to other player" do
      expect(player_2).to receive(:receive_damage)
      player_1.attack(player_2)
    end
  end

end
