class Ingredient < ActiveRecord::Base

  has_many :ingredients_recipes
  has_many :recipes, through: :ingredients_recipes
  attr_accessible :name, :recipe_ids, :image_url, :ingredient_image


  validates :name, presence: true, uniqueness: true
  # validates :image_url, presence: true

  mount_uploader :ingredient_image, IngredientImageUploader
end
