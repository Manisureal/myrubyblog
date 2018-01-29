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
    @categories_arr = Category.all.map do |c|
       c.name
       c.id
    end

  end

  def update

  end



  def destroy

  end

end
