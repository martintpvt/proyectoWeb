class SessionsController < ApplicationController
	def new
	end
  
	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			session[:name] = user.name
			session[:lastname] = user.lastname
			session[:username] = user.username
			session[:email] = user.email
			session[:role] = user.role
			redirect_to root_url, notice: 'Logged in!'
		else
			flash.now.alert = 'Email or password is invalid'
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		session[:name] = nil
		session[:lastname] = nil
		session[:username] = nil
		session[:email] = nil
		session[:role] = nil
		redirect_to root_url, notice: 'Logged out!'
	end
end
