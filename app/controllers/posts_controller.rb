class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit
    @post = Post.find(params[:id])
    # @categories_arr = Category.all.map do |c|
    #    c.name
    #    c.id
    # end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)

      redirect_to post_path,
      :notice => "Your Post was Updated"
    else
      render "edit"
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path,
    :notice => "Your Post has been deleted"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end

end
