require 'pry'
require 'json'

class Player



  attr_reader :name, :position, :team_name, :players

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
    @players = []

  end

  def self.all
    file = File.read('roster.json')
    @@data_hash = JSON.parse(file)

    @@data_hash.each do |teams,hash|
      hash.each do |position, player|
        @players << Player.new(player, position, teams)
      end
    end

    @players
  end
end

player= Player.new("John", "Catcher", "Simpson Slammers")
Player.all

binding.pry
