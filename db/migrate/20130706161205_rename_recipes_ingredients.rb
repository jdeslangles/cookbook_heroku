class RenameRecipesIngredients < ActiveRecord::Migration
  def change
    rename_table :recipes_ingredients, :ingredients_recipes
  end
end
