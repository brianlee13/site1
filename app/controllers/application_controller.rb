class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    # current_user
    @posts = Post.last(3)
  end

  def hello
    render html: "Hello, world!"
  end

  def after_sign_in_path_for(resource)
    root_path
  end
end
