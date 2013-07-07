class IngredientsController < ApplicationController
def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update_attributes(params[:ingredient])
    redirect_to @ingredient
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    @ingredient.save
    redirect_to @ingredient
  end

  def new
    @ingredient = Ingredient.new
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.destroy
      redirect_to ingredients_path
    else
      redirect_to @ingredient
  end
end
end
