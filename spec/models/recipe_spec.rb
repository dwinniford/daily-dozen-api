require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context "creates a recipe and saves to the database" do
    it "saves a recipe with attributes" do
      plan = Plan.create!(title: "Unhealthy", description: "doesn't check boxes")
      recipe = plan.recipes.build(label: "yummy chicken", source: "serious eats")
      recipe.save 
      expect(Recipe.find_by(label: "yummy chicken")).to eq(recipe)
    end
    
    
  end
  
end
