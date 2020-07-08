require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context "creates a recipe and saves to the database" do
    it "saves a recipe with attributes" do
      recipe = Recipe.create(label: "yummy chicken", source: "serious eats")
      expect(Recipe.find_by(label: "yummy chicken")).to eq(recipe)
    end
    
    
  end
  
end
