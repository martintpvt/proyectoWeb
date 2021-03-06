class UsersController < ApplicationController
	before_filter :admin_user?, :except => :new
	def new
		@user = User.new
	end

	def create
		@user = User.new(allowed_params)
		@user.role = 2
		if @user.save
			
			if !logged_in?
				session[:user_id] = @user.id
				session[:name] = @user.name
				session[:lastname] = @user.lastname
				session[:username] = @user.username
				session[:email] = @user.email
				session[:role] = @user.role

				redirect_to root_url, notice: 'Thank you for signing up!'
			else
				redirect_to showusers_path
			end
			
		else
			render :new
		end
	end

	def show
	end

	def update
	end

	def delete
	end

	private

	def allowed_params
		params.require(:user).permit(:email, :password, :password_confirmation, :name, :lastname, :username, :role)
	end
end