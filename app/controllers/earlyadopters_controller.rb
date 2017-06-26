class EarlyadoptersController < ApplicationController


	def new
        @earlyadopter = User.new
    end

	def show
		@earlyadopter = Earlyadopter.find(params[:id])
	end

	def create
		@earlyadopter = Earlyadopter.new(earlyadopter_params)
	 
		@earlyadopter.save
		redirect_to @earlyadopter
	end
	
	private
		def earlyadopter_params
			params.require(:earlyadopter).permit(:name, :email)
		end


end
