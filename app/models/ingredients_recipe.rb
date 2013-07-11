class IngredientsRecipe < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  attr_accessible :ingredient_id, :quantity, :recipe_id
  validates :ingredient_id, uniqueness: { scope: :recipe_id }
end
