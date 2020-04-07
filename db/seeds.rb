# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

50.times do 
    Ingredient.create(name: Faker::Food.ingredient)
    Recipe.create(title: Faker::Food.dish)
    User.create(name: Faker::Kpop.solo, ingredient: Ingredient.all.sample, recipe: Recipe.all.sample)
end
