class CommentsController < ApplicationController
	def create
		@quip = Quip.find(params[:quip_id])
		@comment = @quip.comments.create(comment_params)
		redirect_to quip_path(@quip)
	end

	def destroy
		@quip = Quip.find(params[:quid_id])
		@comment = @quip.comments.find(params[:id])
		@comment.destroy
		redirect_to quip_path(@quip)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
