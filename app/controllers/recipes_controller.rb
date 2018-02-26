class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = User.find(@recipe.user_id)
  end

  def new
    @recipe = current_user.recipes.new
  end

  def create
    # @recipes = current_user.recipes.order("created_at: :desc")   #shows latest recipe first

    @recipe = current_user.recipes.new(recipes_params)
    @recipe.save
    
    redirect_to recipe_path(@recipe.id)

  end 

  def edit
    @recipe = Recipe.find(params[:id])
    
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.title = params[:recipe][:title]
    @recipe.ingredients = params[:recipe][:ingredients]
    @recipe.directions = params[:recipe][:directions]
    @recipe.image = params[:recipe][:image]
    @recipe.save 

    redirect_to recipe_path(@recipe.id)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    
    if @recipe.user_id != current_user.id
      redirect_to root_path
    end
  end

  private

  def recipes_params
    return params.require(:recipe).permit(:title, :directions, :ingredients, :image)
  end
end

