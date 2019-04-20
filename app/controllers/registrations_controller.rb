class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
		puts(params[:id])
		@registration = Registration.create(params[:registration])
		if params[:registration].valid?
			redirect_to log_in_url
			flash[:notice] = "User successfully created"
		else
			redirect_to registrations_url
			flash[:notice] = "User registration failed"
		end
	end
end
