class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
    @recipe = Recipe.find(params[:id])
    @user = User.find(@comment.user_id)
    @users = User.all
    @comments = comment.all  
  end

  def new
    @comment = Comment.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = current_user.comments.new(comments_params)
    @comment.recipe = @recipe
    @comment.save
    redirect_to recipe_path(@recipe.id)
  end

  def edit
    @comment = Comment.find(params[:id])

  end

  def update
  end

  def delete
  end

  private

  def comments_params
    return params.require(:comment).permit(:body)
  end

end
