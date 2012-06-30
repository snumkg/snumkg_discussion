class Admin::AuthController < AdminController
	def index
	end

	def signin
		if params[:password] == 'snumkg12' then
			session[:admin] = 1
			redirect_to admin_articles_path
		else
			redirect_to admin_auth_path
		end
	end

	def signout
		session[:admin] = nil
		redirect_to root_path
	end
end
