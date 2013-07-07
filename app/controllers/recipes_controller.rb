class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Categories.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(params[:recipe])
    redirect_to @recipe
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
    redirect_to @recipe
  end

  def new
    @recipe = Recipe.new
    @categories = Categories.all
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path
    else
      redirect_to @recipe
  end
end
end
