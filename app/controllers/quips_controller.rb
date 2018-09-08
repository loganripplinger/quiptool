class QuipsController < ApplicationController

	http_basic_authenticate_with name: 'dhh', password: 'secret', except: [:index, :show]

	def index
		@quips = Quip.all
		@comments = Comment.joins(:quip)
	end

	def show
		@quip = Quip.find(params[:id])
	end

	def new
		@quip = Quip.new
	end

	def edit
		@quip = Quip.find(params[:id])
	end

	def create	
		@quip = Quip.new(quip_params)

		if @quip.save
			redirect_to @quip
		else
			render 'new'
		end
	end

	def update
		@quip = Quip.find(params[:id])

		if @quip.update(quip_params)
			redirect_to @quip
		else
			render 'edit'
		end
	end 

	def destroy
		@quip = Quip.find(params[:id])
		@quip.destroy

		redirect_to quips_path
	end

	private
		def quip_params
			params.require(:quip).permit(:text, :author, :branch, :offensive)
		end
end
