class SessionsController < ApplicationController
  def new
    # @user = User.new
    @user = User.new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password])

    if user.nil?
      redirect_to new_session_url
    else
      login!(user)

      # session[:session_token] = User.generate_session_token
      # @user.session_token = session[:session_token]
      # @user.save!
      redirect_to user_url(user)
      
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end
end
