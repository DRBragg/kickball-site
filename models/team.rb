require_relative "./team_data"

class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    allTeams = []
    TeamData::ROLL_CALL.each_key { |team| allTeams << Team.new(team) }
    allTeams
  end

  def players
    playersArr = []
    team = TeamData::ROLL_CALL[:"#{@name}"]
    team.each_pair {|position, player| playersArr << Player.new(player, position, @name)}
    playersArr
  end
end
