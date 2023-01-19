class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text   :material, null: false
      t.text   :make, null: false
      t.timestamps
    end
  end
end
