require "spec_helper"

RSpec.describe Team do
  let(:team) { Team.new("Simpson Slammers")}

  describe ".new" do
    it "should create a new team" do
      expect(team).to be_a(Team)
    end
  end

  describe "#name" do
    it "has a reader for name" do
      expect(team.name).to eq("Simpson Slammers")
    end

    it "should not have a writer for name" do
      expect { team.name = "Slammer Simpsons" }.to raise_error(NoMethodError)
    end
  end

  describe ".all" do
    it "should return an array" do
      expect(Team.all).to be_a(Array)
    end

    it "should return an array of team objects" do
      expect(Team.all[0]).to be_a(Team)
    end
  end

  describe "#players" do
    it "should return an array" do
      expect(team.players).to be_a(Array)
    end

    it "should return an array of player objects" do
      expect(team.players[0]).to be_a(Player)
    end
  end
end
