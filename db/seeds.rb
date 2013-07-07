# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.delete_all
recipes = Recipe.create([
  { title: "Brownie", author: "Andrea Kennedy", image: "brownie.jpg", instructions: "Just add chocolate!" },
  { title: "Flan patissier", author: "Julien Deslangles-Blanch", image:"flan.jpg", instructions: "Family secret..." },
  { title: "Caesar salad", author: "John McClane", image: "caesar_salad.jpg", instructions: "Yippi Kai Yay!"}
  ])

Ingredient.delete_all
ingredients = Ingredient.create([
  { name: "tomatoes" },
  { name: "butter"},
  { name: "chocolate"},
  { name: "milk"},
  { name: "flour"},
  { name: "salad"},
  { name: "sugar"},
  { name: "salt"},
  { name: "caeasar dressing"},
  { name: "croutons"},
  { name: "bread"},
  { name: "ham"},
  { name: "potatoes"},
  { name: "apples"},
  { name: "bananas"},
  { name: "vanilla ice cream"},
  { name: "chocolate ice cream"},
  { name: "eggs"},
  { name: "parmesan"},
  { name: "cheddar"},
  { name: "pasta"},
  { name: "meatballs"},
  { name: "chocolate"},
  { name: "macaroni"},
  { name: "spaghetti"}
  ])