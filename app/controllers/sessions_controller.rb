class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(request.env["omniauth.auth"])
		session[:user_id] = user.id
		flash[:notice] = "Signed in"
		redirect_to root_path
	end

	def destroy
		session.delete(:user_id) if current_user
		redirect_to root_path
	end
end