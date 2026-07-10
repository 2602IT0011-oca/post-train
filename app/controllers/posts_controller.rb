class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Post.includes(:user)  # ← Eager LoadingでN+1解消！
  end
end
