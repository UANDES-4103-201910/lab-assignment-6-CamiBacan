class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
		puts(params[:id])
		@user = User.create(params[:registration])
		if @user.save
			redirect_to log_in_url
			flash[:notice] = "User successfully created"
		else
			redirect_to registrations_url
			flash[:notice] = "User registration failed"
		end
	end
end
