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
  { name: "tomatoes", image_url:"tomatoes.jpg" },
  { name: "butter", image_url:"butter.jpg" },
  { name: "chocolate", image_url:"chocolate.jpg" },
  { name: "milk", image_url:"milk.jpg" },
  { name: "flour", image_url:"flour.jpg" },
  { name: "salad", image_url:"salad.jpg" },
  { name: "sugar", image_url:"sugar.jpg" },
  { name: "salt", image_url:"salt.jpg" },
  { name: "caeasar dressing", image_url:"caesar_dressing.jpg" },
  { name: "croutons", image_url:"croutons.jpg" },
  { name: "bread", image_url:"bread.jpg" },
  { name: "ham", image_url:"ham.jpg" },
  { name: "potatoes", image_url:"potatoes.jpg" },
  { name: "apples", image_url:"apples.jpg" },
  { name: "bananas", image_url:"bananas.jpg" },
  { name: "vanilla ice cream", image_url:"vanilla_ice.jpg" },
  { name: "chocolate ice cream", image_url:"chocolate_ice.jpg" },
  { name: "eggs", image_url:"eggs.jpg" },
  { name: "parmesan", image_url:"parmesan.jpg" },
  { name: "cheddar", image_url:"cheddar.jpg" },
  { name: "pasta", image_url:"pasta.jpg" },
  { name: "meatballs", image_url:"meatballs.jpg" },
  { name: "chocolate", image_url:"chocolate.jpg" },
  { name: "macaroni", image_url:"macaroni.jpg" },
  { name: "spaghetti", image_url:"spaghetti.jpg" }
  ])

Categories.delete_all
categories = Categories.create([
  { category_name: "Breakfast" },
  { category_name: "Starter" },
  { category_name: "Main" },
  { category_name: "Side" },
  { category_name: "Dessert" },
  { category_name: "Snack" }
  ])