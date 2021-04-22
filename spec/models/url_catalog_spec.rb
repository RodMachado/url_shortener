require 'rails_helper'

RSpec.describe UrlCatalog, type: :model do

  describe "validations" do
    it { should validate_uniqueness_of :url_hash }

    it "validates url format" do
      expect { create(:url_catalog, url: 'invalid').to raise_error }
    end
  end

end
