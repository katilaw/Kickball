require "sinatra"

set :public_folder, File.join(File.dirname(__FILE__), "public")
require 'json'
file = File.read('roster.json')
data_hash = JSON.parse(file)


get "/teams" do
  @teams = data_hash
  erb :index
end

get "/teams/:teams_info" do
  @teams = data_hash
  @teams_info = params[:teams_info]
  erb :show
end

get "/positions" do
  @teams = data_hash
  erb :positions
end

get "/positions/:position_types" do
  @teams = data_hash
  @position_types = params[:position_types]
  erb :position_types
end
