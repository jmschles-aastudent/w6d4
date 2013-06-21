class UsersController < ApplicationController

  def create
    @user = User.create(params[:user])
    redirect_to user_url(@user)
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @secret = Secret.new
    @tags = Tag.all
  end

  def index
    @users = User.where("id != #{current_user.id}")
  end
end
