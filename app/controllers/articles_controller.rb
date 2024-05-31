class ArticlesController < ApplicationController
  before_action :set_articles, only: [:show, :edit]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit; end

  def show; end

  private

  def set_articles
    @article = Article.find(params[:id])
  end
end
