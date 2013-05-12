class QueensController < ApplicationController
	def show
		@queen = Queen.find(params[:id])
	end
	def edit
		@queen = Queen.find(params[:id])
	end
	def update
		@queen = Queen.find(params[:id])
		@queen.update_attributes(params[:queen])
		@queen.save
		render params[:queen][:picture]
	end
end