class Admin::ArticlesController < AdminController
	def index
		@articles = Article.all(:order => ["state", "id desc"])
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to admin_articles_path
	end

	def change_state
		@article = Article.find(params[:id])
		@article.state = (@article.state + 1) % 4
		@article.save

		render :json => {
			:article => @article,
			:state_badge => @article.state_badge,
			:state_string => @article.state_string
		}
	end
end
