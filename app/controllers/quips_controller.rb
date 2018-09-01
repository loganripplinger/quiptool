class QuipsController < ApplicationController
	def index
		@quips = Quip.all
	end

	def show
		@quip = Quip.find(params[:id])
	end

	def new
	end

	def create	
		@quip = Quip.new(quip_params)

		@quip.save
		redirect_to @quip
	end

	private
		def quip_params
			params.require(:quip).permit(:text, :author, :branch, :offensive)
		end
end
