class UserController < ApplicationController

	def new 
		@user = User.new 
	end 

	def create 

	user_params = params.require(:user).permit(:name)
	@user = User.create(user_params) 


	end 

	def index 
		@user = User.all
	end 

	def show 
	@user = User.find(params[:id])

	end 


	
end
