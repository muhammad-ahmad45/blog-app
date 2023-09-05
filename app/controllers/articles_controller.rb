
class ArticlesController < ApplicationController

  around_action :wrap_action_with_custom_code, only: [:show, :edit]

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

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
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

   def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
   end 

  private
  def article_params
    params.require(:article).permit(:title, :body, :status, :email, :email_confirmation)
  end

  private
  def wrap_action_with_custom_code
    # Code to run before the action
    puts "Before action code"

    yield  # This yields to the actual action

    # Code to run after the action
    puts "After action code"
  end

end
