class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :asc)
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to post
  end

  def show
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy
    redirect_to @post
  end

  private
  def post_params
    params.require(:posts).permit(:title)
end
