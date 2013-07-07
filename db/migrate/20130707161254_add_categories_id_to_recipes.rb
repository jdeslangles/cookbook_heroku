class AddCategoriesIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :categories_id, :integer
  end
end
