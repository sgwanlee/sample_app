class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email].downcase)
		#authenticate provied by has_secure_password
		if user && user.authenticate(params[:password])
			sign_in user
			redirect_back_or user
		else
			#flash.now : for rendered pages
			#flash : for redirected pages
			flash.now[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
		
	end

	def destroy
		sign_out
		redirect_to root_url
		#what about root_path?
	end

end
