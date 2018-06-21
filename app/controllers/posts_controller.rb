class PostsController < ApplicationController

  def index
    @user = current_user
    @posts = @user.posts
  end

  def new
  end

  def create
    set_user
    @post = @user.posts.new(post_params)
    @post.save
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(
      :content)
  end

  def set_user
    @user = current_user
  end
end
