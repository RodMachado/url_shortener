require "rails_helper"

RSpec.describe UrlConvertersController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/a1a1a1").to route_to("url_converters#show", url_hash: "a1a1a1")
    end
  end
end
