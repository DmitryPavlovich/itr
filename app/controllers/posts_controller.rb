class PostsController < ApplicationController
  before_action :set_post, only: [:destroy, :show, :edit, :update]

  def index
    @post = Post.all
  end

  def new
    @post=Post.new
  end

  def destroy
    @post.destroy
    redirect_to posts_path, info: 'Article successfully destroy'
  end

  def show
  end

  def edit
  end


  def update
    if (@post.update(post_params))
      redirect_to @post, success: 'Article successfully updated'
    else
      render'edit', danger: 'Article not updated'
    end
  end


  def create
    @post = Post.new(post_params)
    if (@post.save)
      redirect_to @post, info: 'Article is created'
    else
      render'new', danger: 'Article not created'
    end
  end

  private

  def set_post
  @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
