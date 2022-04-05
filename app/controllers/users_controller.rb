class UsersController < ApplicationController

  before_action :user, only: %i[ show edit update destroy ]

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end
  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.new(post_params)
  end
end
