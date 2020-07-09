class AddColumnToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :plan_id, :integer
  end
end
