class CommentsController < ApplicationController
	def create
		@comment = Comment.new
		@comment.body = params[:comment][:body]
		@comment.queen_id = params[:comment][:queen_id]
		@comment.save
		redirect_to queen_path(@comment.queen)
	end
end