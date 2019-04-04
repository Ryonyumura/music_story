require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do
  describe "GET Index" do

    before do
     get :index
    end

    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      expect(response).to render_template("index")
    end
  end
end
