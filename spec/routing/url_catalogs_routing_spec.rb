require "rails_helper"

RSpec.describe UrlCatalogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/url_catalogs").to route_to("url_catalogs#index")
    end

    it "routes to #new" do
      expect(get: "/url_catalogs/new").to route_to("url_catalogs#new")
    end

    it "routes to #show" do
      expect(get: "/url_catalogs/1").to route_to("url_catalogs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/url_catalogs/1/edit").to route_to("url_catalogs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/url_catalogs").to route_to("url_catalogs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/url_catalogs/1").to route_to("url_catalogs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/url_catalogs/1").to route_to("url_catalogs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/url_catalogs/1").to route_to("url_catalogs#destroy", id: "1")
    end
  end
end
