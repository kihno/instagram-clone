class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show]
  
  def index
    # user feed
    @posts = Post.all
  end

  def Profile
    # user profile

  end

  def set_user
    @user = User.find_by_username(params[:username])
  end

end
