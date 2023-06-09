class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    # user feed
    @posts = Post.all
  end

  def Show
    # user profile
  end

end
