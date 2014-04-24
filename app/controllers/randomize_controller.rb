class RandomizeController < ApplicationController

	def index 
	
	teams = ["Aloe","Swipe Loyalty,Inc.","CareHR","ChewBots","Creativity
	GameLab","Emory Innovations, Inc.","GetNotes","Presagis Virtual
	World","RideRedRover, Inc. (R3)","Carrot","Rocket
	Whale","Sayroom","Skroot","Virtual Revolution","TSYS"] 

	@shuffle = teams.shuffle

	end

	def move_up
	team_array = params[:team_array]
	team_name = params[:team_name]
	team_index = params[:team_index].to_i
	new_position = team_index - 1

	@shuffle = team_array.insert(new_position, team_array.delete_at(team_index))

	end

	def move_down
	team_array = params[:team_array]
	team_name = params[:team_name]
	team_index = params[:team_index].to_i
	new_position = team_index + 1

	@shuffle = team_array.insert(new_position, team_array.delete_at(team_index))

	end

	def delete
	team_array = params[:team_array]
	team_name = params[:team_name]
	team_index = params[:team_index].to_i

	team_array.delete_at(team_index)
	update = team_array
	@shuffle = update

	end



end
