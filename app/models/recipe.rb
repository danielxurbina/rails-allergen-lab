class Recipe < ActiveRecord::Base
    has_one :user, dependent: :destroy 
    has_many :ingredients, through: :user

    validates :title, presence: true

    # returns recipe object
    def self.most_ingredients
        self.all.max_by { |recipe| recipe.ingredients.count }
    end

    # puts each ingredient for the recipe object
    def self.list_ingredients
        self.most_ingredients.ingredients.each do |ingredient|
            puts ingredient.name
        end
    end

    # returns array of recipes from highest ingredient count to lowest
    def self.order_by_max
        self.all.sort_by { |recipe| recipe.ingredients.count }.reverse
    end

    # puts each recipe title
    def self.puts_list_of_recipes
        self.order_by_max.each do |recipe|
            puts recipe.title
        end
    end

    # returns hash with recipe_id's in desc order by frequency of recipe_id
    def self.sort_recipes
        User.all.group("recipe_id").order("count_recipe_id desc").count("recipe_id")
    end
end
