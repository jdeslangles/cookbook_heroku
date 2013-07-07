class RemoveCreatedAtFromRecipesIngredients < ActiveRecord::Migration
  def up
    remove_column :recipes_ingredients, :created_at
  end

  def down
    add_column :recipes_ingredients, :created_at, :datetime
  end
end
