class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.integer :user_id
      t.integer :recipe_id
      t.text :content, null: false

      t.timestamps
    end
  end
end
