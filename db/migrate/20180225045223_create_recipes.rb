class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :ingredients
      t.string :quantity
      t.string :directions
      t.string :image
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
