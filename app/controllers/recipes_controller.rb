class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
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
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :image, :title, :material, :make)
  end
end
