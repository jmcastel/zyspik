class HelloController < ApplicationController

	def new
        @earlyadopter = Earlyadopter.new
	end

	

	def create
		@earlyadopter = Earlyadopter.new(params[:earlyadopter])
	 
		@earlyadopter.save
		redirect_to @earlyadopter
	end


end
