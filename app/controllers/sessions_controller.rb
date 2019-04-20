class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		puts(params[:id])
		@session = Session.create(params[:session])
		render json: @session
	end

	def destroy
		#complete this method
		@user = User.find(params[:id])
		@user.delete()
	end
end
