class SeasonsController < ApplicationController
	def show
		@queens = Queen.where(:season_id => params[:id])
		@queen = Queen.find(params[:id])
	end
end
