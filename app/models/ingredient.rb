class Ingredient < ActiveRecord::Base
has_many :users, dependent: :destroy
has_many :recipes, through: :users
end