class UsersController < ApplicationController
  before_action :authorize, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new                                                   #creates an empty object for the form
  end


  #  NEED TO MAKE USERS GO DIRECTLY INTO THE HOMEPAGE AFTER SIGNING UP
  def create
    @user = User.new(user_params)                           
    if @user.save                                                     # If all the conditions for successfull save are met, go ahead. It also saves the user automatically before spittig out true or false value
      redirect_to root_path                                           # This sets the cookies (in sessions controller) for a new session for THIS user
    else
      # "Oops, this doesn't look right. Try again"
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
    @user.save
  end

  def update
  end

  def destroy
  end

  private                                                              #any methods declared after this is going to be private and can only be accessed inside this class

  def user_params
    return params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
