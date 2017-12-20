class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    binding.pry
    @post.title = post_params[:title]
    @post.content = post_params[:content]
    @post.category = post_params[:category]

  if @post.valid?

    redirect_to post_path(@post)
  end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
