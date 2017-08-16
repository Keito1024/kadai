class ArticlesController < ApplicationController

  def index
    @articles = Article.all.includes(:user)
    # @title = @articles.title
    # @description = @article.description
  end

  def new
  end

  def create
    @articles = Article.create(article_params)
  end

  def show
    @articles = Article.find(params[:id])
  end

  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy if @articles.user_id == current_user.id
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
      if @articles.user_id == current_user.id
        @articles.update(article_params)
      end
  end

  private

  def article_params
    params.permit(:title,:description,:category_id,:category_name)
  end
end
