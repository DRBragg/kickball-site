require "spec_helper"

RSpec.describe Player do
  let(:player) { Player.new("Bart Simpson", "Catcher", "Simpson Slammers")}

  describe ".new" do
    it "should create a new player" do
      expect(player).to be_a(Player)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(player.name).to eq("Bart Simpson")
    end

    it "should not have a writer for name" do
      expect { player.name = "Drew Bragg" }.to raise_error(NoMethodError)
    end
  end

  describe "#position" do
    it "has a reader for position" do
      expect(player.position).to eq("Catcher")
    end

    it "should not have a writer for position" do
      expect { player.position = "Pitcher" }.to raise_error(NoMethodError)
    end
  end

  describe "#team_name" do
    it "has a reader for team_name" do
      expect(player.team_name).to eq("Simpson Slammers")
    end

    it "should not have a writer for team_name" do
      expect { player.team_name = "Slammer Simpsons" }.to raise_error(NoMethodError)
    end
  end

  describe ".all" do
    it "should return an array" do
      expect(Player.all).to be_a(Array)
    end

    it "should return an array of player objects" do
      expect(Player.all[0]).to be_a(Player)
    end
  end
end
