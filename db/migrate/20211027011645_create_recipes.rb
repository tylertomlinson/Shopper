class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :link
      t.integer :calories
      t.integer :sugar
      t.integer :fat
      t.string :type

      t.timestamps
    end
  end
end
