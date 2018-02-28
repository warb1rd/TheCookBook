class UsersController < ApplicationController
  before_action :authorize, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new                                                        #creates an empty object for the form
  end

  def create
    @user = User.new(user_params)                           
    if @user.save                                                           # If all the conditions for successfull save are met, go ahead. It also saves the user automatically before spittig out true or false value
      session[:user_id] = @user.id                                          #USERS GO DIRECTLY INTO THE HOMEPAGE AFTER SIGNING UP                             
      redirect_to user_path @user.id                                        # This sets the cookies (in sessions controller) for a new session for THIS user
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)           
    @user.save
    
    redirect_to user_path
  end

  def destroy
  end

  private                                                                   #any methods declared after this is going to be private and can only be accessed inside this class

  def user_params
    return params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
