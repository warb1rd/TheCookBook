class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_username(params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else
      # Alert or add notice that says "try again"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
