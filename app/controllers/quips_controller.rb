class QuipsController < ApplicationController
	def index
		@quips = Quip.all
	end

	def show
		@quip = Quip.find(params[:id])
	end

	def new
		@quip = Quip.new
	end

	def create	
		@quip = Quip.new(quip_params)

		if @quip.save
			redirect_to @quip
		else
			render 'new'
		end
	end

	private
		def quip_params
			params.require(:quip).permit(:text, :author, :branch, :offensive)
		end
end
