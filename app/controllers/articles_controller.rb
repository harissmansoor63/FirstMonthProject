
class ArticlesController < ApplicationController

  
 # before_action :set_expert_locale
 
# def set_expert_locale
#   I18n.locale = :expert if article.id?
# end






before_action :check_article, only: :create
before_action :getting_article_object, only: [:show,:destroy]




  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  
  def index
    @articles = Article.all

    # Article.where(title: "hello", text: "hi").update_all(title:"hiiiiii", text: "hiiiii")
    
    # @articles = Article.where(title: 'hariss', text: 'mansoor').order(created_at: :desc)
    
  end
 
  def show
   
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
      
  
  
    end
  end
 
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
   
    @article.destroy
    # Article.destroy_all
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

    def check_article
      @article= Article.new(article_params)
      puts ("before filter working")
      redirect_to new_article_path if @article.title.nil? || @article.title.empty? || @article.title.blank?
    end

    def getting_article_object
    @article = Article.find(params[:id])
    end

end