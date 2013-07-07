class RemoveUpdatedAtFromRecipesIngredients < ActiveRecord::Migration
  def up
    remove_column :recipes_ingredients, :updated_at
  end

  def down
    add_column :recipes_ingredients, :updated_at, :datetime
  end
end
