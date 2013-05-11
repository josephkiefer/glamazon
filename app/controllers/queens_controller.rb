class QueensController < ApplicationController
	def show
		@queen = Queen.find(params[:id])
	end
	def edit
		@queen = Queen.find(params[:id])
	end
	def update
		@queen = Queen.find(params[:id])
		@queen.update_attributes(:bio => params[:queen][:bio], :picture => params[:queen][:picture])
		@queen.save
		redirect_to queen_path(@queen.id)
	end
end