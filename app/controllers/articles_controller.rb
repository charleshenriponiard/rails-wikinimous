class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def create
     @article = Article.new(set_params)
     @article.save
     redirect_to articles_path
  end

  def show
  end

  def new
    @article = Article.new

  end

  def edit

  end

  def update
    @article.update(set_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end
