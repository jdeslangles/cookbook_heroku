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
    if @ingredient.update_attributes(params[:ingredient])
    redirect_to @ingredient, notice: "Successfully updated the ingredient!"
  else
    render action: 'edit', alert: "Failed to udpate the ingredient :("
  end
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save
      redirect_to @ingredient, notice: "Successfully added the new ingredient to our database!"
    else
      render action: 'new', alert: "Failed to add the ingredient to our database :("
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.destroy
      redirect_to ingredients_path, notice: "Successfully deleted the ingredient!"
    else
      redirect_to @ingredient
  end
end
end
