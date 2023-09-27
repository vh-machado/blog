class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  # OK - criar tabela de usuários (login, nickname, password, is_admin, is_logged_in)
  # OK - criar seeds com 1 admin e 1 usuário convencional
  # OK - quando um usuário logar, o campo is_logged_in vai para true
  # criar pagina de administração, todas as actions
  # limitar actions na homepage apenas para visualizar e adicionar comentário
  # só é possível comentar se o usuário estiver logado
  # página de administração vai ter um login, e só vai permitir o login da página de administração se ele for um admin
  # página de cadastro

  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
