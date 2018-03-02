class RecipesController < ApplicationController


  def index
    @recipes = Recipe.all  
    
    if params[:search]
      @recipes = Recipe.search(params[:search]).order("created_at DESC")          # Displays matching recipes in descending order from the time they were created.
    else
      @recipes = Recipe.all.order("created_at DESC")
    end
    @comments = Comment.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
  end

  def new
    @recipe = current_user.recipes.new
  end

  def create
    # @recipes = current_user.recipes.order("created_at: :desc")                  #shows latest recipe first

    @recipe = current_user.recipes.new(recipes_params)
    @recipe.save
    
    redirect_to recipe_path(@recipe.id)
  end 

  def edit
      @recipe = Recipe.find(params[:id])
      @user = User.find(@recipe.user_id)   
      if @user != current_user                                   # If the user is not logged in, the page redirects to root path. Won't let the person edit.
        redirect_to root_path
      end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipes_params) 
    @recipe.save 

    redirect_to recipe_path(@recipe.id)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    # @recipe.comments.destroy
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

