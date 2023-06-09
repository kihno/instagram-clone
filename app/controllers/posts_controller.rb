class PostsController < ApplicationController

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id if user_signed_in?

    if @post.save
      redirect_to dashboard_path, flash: { success: "Post was created successfully." }
    else
      redirect_to new_post_path, flash: { success: "Something went wrong." }
    end
  end

  private

  def post_params
    params.require(:post).permit(:image)
  end
end
