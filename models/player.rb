require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    allPlayers = []
    TeamData::ROLL_CALL.each_pair do |team, roster|
      roster.each_pair { |position, player| allPlayers << Player.new(player, position, team)}
    end
    allPlayers
  end
end
