class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/recipes/#{comment.recipe.id}"
  end

  def destroy
    Comment.find_by(id: params[:id],recipe_id: params[:recipe_id]).destroy
    redirect_to recipes_path
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end

end
