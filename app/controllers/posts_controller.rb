class PostsController < ApplicationController

  def index
    @user = current_user
    @posts = @user.posts
  end
end
