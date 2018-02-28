class PagesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(@recipe.user_id)
    @recipes = @user.recipes
  end
end
