require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do
  render_views
  describe "GET static_pages" do
    it "get top" do
      get :top
      expect(response).to render_template("top")
      expect(response.status).to eq(200)
      assert_select "title", "思い出ソング"
      assert_select "a[href=?]", static_pages_index_path, count: 3
      assert_select "a[href=?]", static_pages_help_path
      assert_select "a[href=?]", static_pages_about_path
    end

    it "get index" do
      get :index
      expect(response).to render_template("index")
      expect(response.status).to eq(200)
      assert_select "title", "まとめ/思い出ソング"
      assert_select "a[href=?]", static_pages_index_path
      assert_select "a[href=?]", static_pages_help_path
      assert_select "a[href=?]", static_pages_about_path

      #href　コメントpath,数字、勢い
    end

    it "get about" do
      get :about
      expect(response).to render_template("about")
      expect(response.status).to eq(200)
      assert_select "title", "About/思い出ソング"
      assert_select "a[href=?]", static_pages_index_path
      assert_select "a[href=?]", static_pages_help_path
      assert_select "a[href=?]", static_pages_about_path
    end

    it "get help" do
      get :help
      expect(response).to render_template("help")
      expect(response.status).to eq(200)
      assert_select "title", "Help/思い出ソング"
      assert_select "a[href=?]", static_pages_index_path
      assert_select "a[href=?]", static_pages_help_path
      assert_select "a[href=?]", static_pages_about_path
    end
  end
end
