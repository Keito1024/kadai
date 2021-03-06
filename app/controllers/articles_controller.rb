class ArticlesController < ApplicationController

  def index
    @articles = Article.all.includes(:user)
  end

  def new
  end

  def create
    current_user.articles.create(article_params)
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
    params.permit(:title,:description)
  end
end
