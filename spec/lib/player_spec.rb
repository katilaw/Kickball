require "spec_helper"
describe Player do
  let(:player) {player = Player.new("John", "Catcher", "Simpson Slammers")}


  describe ".new" do
    it "intialize player object" do
      expect(player).to be_a(Player)
    end
  end

  describe "#name" do
    it "displays the players name" do
      expect(player.name).to eq("John")
    end
  end

  describe "#position" do
    it "displays the position" do
      expect(player.position).to eq("Catcher")
    end
  end

  describe "#team_name" do
    it "displays the team name" do
      expect(player.team_name).to eq("Simpson Slammers")
    end
  end

  describe "#all" do
    it 'returns array of player objects' do
      expect(player.all).to be_a([Player])
    end
  end
end
