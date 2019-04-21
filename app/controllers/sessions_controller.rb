class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		puts(params[:id])
		@session = Session.create(params[:session])
		render json: @session
		if @session.save
			flash[:notice] = "Session created successfully"
			redirect_to :action => 'users/show'
		else
			flash[:notice] = "Session failed"
			redirect_to log_in_url
		end
	end

	def destroy
		#complete this method
		@session = Session.find(params[:id])
		@session.delete()
	end
end
