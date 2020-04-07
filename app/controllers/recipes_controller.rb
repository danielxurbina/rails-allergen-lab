class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        @ordered_recipes = Recipe.order_by_max
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(recipe_params)

        if @recipe.valid?
            redirect_to recipes_path
        else
            flash[:error] = @recipe.errors.full_messages
            redirect_to new_recipe_path
        end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title)
    end
end