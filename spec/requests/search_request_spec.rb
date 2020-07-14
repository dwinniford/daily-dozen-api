require 'rails_helper'

RSpec.describe "Searches", type: :request do

  describe "GET /recipe" do
    it "returns http success" do
      get "/search/recipe"
      expect(response).to have_http_status(:success)
    end
  end

end
