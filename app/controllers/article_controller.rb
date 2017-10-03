class ArticleController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save

		else

		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		if update
		else
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_back(fallback_location: root_path)
	end

	private

	def article_params
		params.require(:article).permit(:title, :content)
	end
end
