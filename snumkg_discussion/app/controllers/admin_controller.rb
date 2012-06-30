class AdminController < ApplicationController
	before_filter :admin_check

	def admin_check
		if session[:admin].nil? and controller_name != "auth" then
			redirect_to admin_auth_path
		end
	end
end
