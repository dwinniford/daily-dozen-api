class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :label
      t.string :source
      t.string :image
      t.string :url
      t.integer :yield

      t.timestamps
    end
  end
end
