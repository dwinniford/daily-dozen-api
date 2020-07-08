require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/recipes", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Recipe. As you add validations to Recipe, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {label: "yummy chicken", source: "serious eats"}
    
  }

  let(:invalid_attributes) {
    {label: nil, source: nil}
  }

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # RecipesController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      Recipe.create! valid_attributes
      get recipes_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      recipe = Recipe.create! valid_attributes
      get recipe_url(recipe), as: :json
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Recipe" do
        expect {
          post recipes_url,
               params: { recipe: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Recipe, :count).by(1)
      end

      it "renders a JSON response with the new recipe" do
        post recipes_url,
             params: { recipe: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Recipe" do
        expect {
          post recipes_url,
               params: { recipe: invalid_attributes }, as: :json
        }.to change(Recipe, :count).by(0)
      end

      it "renders a JSON response with errors for the new recipe" do
        post recipes_url,
             params: { recipe: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        {label: "yummy fish", source: "funny eats"}
      }

      it "updates the requested recipe" do
        recipe = Recipe.create! valid_attributes
        patch recipe_url(recipe),
              params: { recipe: invalid_attributes }, headers: valid_headers, as: :json
        recipe.reload
        skip("Add assertions for updated state")
      end

      it "renders a JSON response with the recipe" do
        recipe = Recipe.create! valid_attributes
        patch recipe_url(recipe),
              params: { recipe: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json")
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the recipe" do
        recipe = Recipe.create! valid_attributes
        patch recipe_url(recipe),
              params: { recipe: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested recipe" do
      recipe = Recipe.create! valid_attributes
      expect {
        delete recipe_url(recipe), headers: valid_headers, as: :json
      }.to change(Recipe, :count).by(-1)
    end
  end
end
