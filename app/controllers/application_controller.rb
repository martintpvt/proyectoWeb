class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	private

	def logged_in?
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	protected

	def admin_user?
		if logged_in?
			if @current_user.role  == 1
				authenticate_with_http_digest
			else
				redirect_to root_path	
			end
		else
			redirect_to login_path
		end
	end

	def normal_user?
		if logged_in?
			if @current_user.role  == 2
				authenticate_with_http_digest
			else
				redirect_to root_path	
			end
		else
			redirect_to login_path
		end
	end

	helper_method :logged_in?
end
