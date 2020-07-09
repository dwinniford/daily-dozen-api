require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe "create a plan with a single recipe" do 
    it "has recipes of length 1" do
      healthy_plan = Plan.create_with_recipes({title: "Healthy Plan", desciption: "Checked every box", recipes: [{label: "Salad", source: "Serious Eats"}]})
      expect(healthy_plan.recipes.length).to eq 1
    end
  end
end
