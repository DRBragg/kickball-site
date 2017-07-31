require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams/:teamName" do
  @selectedTeam = Team.new("#{params[:teamName]}")

  erb :team
end

get "/teams" do
  @teams = Team.all

  erb :teams
end

get "/positions" do
  @positions = []
  Player.all.each {|player| @positions << player.position}
  @positions.uniq!

  erb :positions
end

get "/positions/:position" do
  @position = params[:position]
  @players = []
  Player.all.each { |player| @players << player unless player.position != :"#{@position}" }

  erb :position
end
