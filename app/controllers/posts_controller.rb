class PostsController < ApplicationController
  before_action :sign_in_required, only: [:show]

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:place, :text, :image, :users_id).merge(users_id: current_user.id)
  end
end
