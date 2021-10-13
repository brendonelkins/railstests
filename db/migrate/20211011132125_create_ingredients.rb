class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.decimal :amount
      t.string :unit
      t.integer :recipe_id

      t.timestamps
    end
    add_index :ingredients, :recipe_id
  end
end
