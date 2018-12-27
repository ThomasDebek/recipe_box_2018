class RecipesController < ApplicationController

  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recepie = Recipe.new(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :user_id)
  end

  def find_recipe
    @recipe = RecipeBox2018.find(params[:id])
  end

end
