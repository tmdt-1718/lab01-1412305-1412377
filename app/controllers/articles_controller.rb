class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
       if session[:user_id]
        render :new
       else 
        redirect_to '/login'
       end
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = User.find(session[:user_id]).articles.create(:title => params[:title], :content => params[:content], :view => '0', :avatar => 'http://www.iconsfind.com/wp-content/uploads/2015/08/20150831_55e46b1f4a412.png')
        redirect_to '/articles'
    end

    def update
        @article = Article.find(params[:id])
        @article.update(view: params[:view]) 
    end
end
