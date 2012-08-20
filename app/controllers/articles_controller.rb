class ArticlesController < ApplicationController
def index
@articles = Article.all
end

def show
@article = Article.find(params[:id])	
@comment=Comment.new
@comment.article_id = @article.id
end

def new
	@article = Article.new
end

def create
    @article = Article.new(params[:article])
    @article.save
    flash[:message]= "Hurray #{@article.title} article created !!Phew"
    redirect_to article_path(@article)
  end
  
  def destroy
  @article = Article.find(params[:id])
  if @article.delete
  	flash[:message]="Boom its been deleted"
    redirect_to :action=>'index'	
  else 
  render 'index'
  end
  end

  def edit
  	@article = Article.find(params[:id])
	
  end

def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])

    flash[:message] = "Article #{@article.title} Updated Successfully!"

    redirect_to article_path(@article)
  end


end
