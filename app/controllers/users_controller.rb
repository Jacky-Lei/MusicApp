class UsersController < ApplicationController
  before_action :require_current_user!, except: [:create, :new]
  before_action :require_login, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  protected
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def require_login
    unless current_user.id == params[:id].to_i
      redirect_to user_url(current_user)
    end
  end
end
