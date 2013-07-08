class Recipe < ActiveRecord::Base
  belongs_to :categories
  has_and_belongs_to_many :ingredients
  attr_accessible :author, :image, :instructions, :title, :ingredient_ids, :categories_id, :category_name

  validates :title, presence: true, uniqueness: true
  validates :image, presence: true
  validates :author, presence: true
  validate :ingredients, :has_ingredients, on: :create, on: :update

  def has_ingredients
    if ingredients.size == 0
      errors.add(:ingredients, "You forgot to add ingredients to your recipe!")
    end
  end
end
