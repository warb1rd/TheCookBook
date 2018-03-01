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
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to root_path
    end

    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private

  def comments_params
    return params.require(:comment).permit(:body)
  end

end
