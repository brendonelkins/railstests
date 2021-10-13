class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.integer :user_id

      t.timestamps
    end
    add_index :authors, :user_id
  end
end
