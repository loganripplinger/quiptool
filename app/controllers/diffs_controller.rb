class DiffsController < ApplicationController

	http_basic_authenticate_with name: 'dhh', password: 'secret'
	# only: :destroy

	def create
		@quip = Quip.find(params[:quip_id])
		@diff = @quip.diffs.new(diff_params)
		
		if @diff.save
			redirect_to quip_path(@quip)
		else
			render 'quips/show'
		end
	end

	def destroy
		@quip = Quip.find(params[:quip_id])
		@diff = @quip.diffs.find(params[:id])
		@diff.destroy
		redirect_to quip_path(@quip)
	end

	# def edit
		# @quip = Quip.find(params[:id])
	# end

	private
		def diff_params
			params.require(:diff).permit(:author, :text, :branch, :offensive)
		end
end
