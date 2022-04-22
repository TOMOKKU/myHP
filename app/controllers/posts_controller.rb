class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "post created"
      redirect_to("/")
    else
      render("/posts/new")
    end
  end

  def destroy
    @post = Post.find(id: params[:id])
    @post.destroy
    flash[:notice] = "post deleted"
    redirect_to("/")
  end

  def search
    @posts = Post.search(params[:keyword])
    @keyword = params[:keyword]
    render("/")
  end
  
  private

  def post_params
    params.require(:post).permit(:content)
  end
end
