class RecipesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_tweet, only: [:edit, :show]

  def index
    @recipes = Recipe.includes(:user).order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
  end

  def edit
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
  end

  def show
  end

  private
  def recipe_params
    params.require(:recipe).permit(:image, :title, :material, :make).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def set_tweet
    @recipe = Recipe.find(params[:id])
  end
end
