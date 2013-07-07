class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  attr_accessible :author, :image, :instructions, :title
end
