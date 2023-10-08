class PostController < ApplicationController
  before_action :get_post, only: [:show, :edit, :update, :destroy]
  layout :set_layout

  def index
    @pagy, @posts = pagy(Post.all.order('created_at DESC'))
  end

  def show
  end

  private
  def set_layout
    if user_signed_in?
      "application_user"
    else
      "application_guest"
    end
  end
  def get_post
    @post = Post.find(params[:id])
  end
end
