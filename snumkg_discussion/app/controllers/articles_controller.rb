class ArticlesController < ApplicationController
	def index
		@article = Article.new
		@articles = Article.all
	end

	def create
		raise
	end

end
