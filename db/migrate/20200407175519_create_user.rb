class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :ingredient_id
      t.integer :recipe_id
    end
  end
end
