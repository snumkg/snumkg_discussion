class ArticlesController < ApplicationController
	def index
		@article = Article.new
		@articles = Article.all(:order => ["state", "id desc"])
	end

	def create
		@article = Article.new(params[:article])
		if @article.save then
			redirect_to articles_path
		else
			raise
		end
	end

	def show
		@article = Article.find(params[:id])

		render :json => @article
	end

end
