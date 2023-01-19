class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @recipes = user.recipes
  end
end
