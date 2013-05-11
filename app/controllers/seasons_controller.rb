class SeasonsController < ApplicationController
	def show
		@queens = Queen.where(:season_id => params[:id])
	end
end
