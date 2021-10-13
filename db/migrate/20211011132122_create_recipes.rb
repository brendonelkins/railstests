class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :difficulty
      t.string :comment
      t.integer :author_id

      t.timestamps
    end
    add_index :recipes, :author_id
  end
end
