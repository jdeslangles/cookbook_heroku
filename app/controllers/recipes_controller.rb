class RecipesController < ApplicationController
  load_and_authorize_resource

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
    @categories = Categories.all
    params[:recipe][:ingredient_ids] ||= [] if params[:recipe]
    if @recipe.update_attributes(params[:recipe])
      redirect_to @recipe, notice: "Successfully updated the recipe!"
    else
      render action: 'edit', alert: "Failed to update the recipe:("
    end
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @categories = Categories.all
    params[:recipe][:ingredient_ids] ||= [] if params[:recipe]
    if @recipe.save
      redirect_to @recipe, notice: "Successfully added the new recipe to our database!"
    else
      render action: 'new', alert: "Failed to create the recipe :("
    end
  end

  def new
    @recipe = Recipe.new
    @categories = Categories.all
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path, notice: "Successfully deleted the recipe!"
    else
      redirect_to @recipe, alert: "Failed to delete the recipe:("
  end
end
end
