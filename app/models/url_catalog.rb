class UrlCatalog < ApplicationRecord

  validates :url_hash, uniqueness: true
  validate :url_format

  private

  def url_format
    unless url =~ URI::regexp
      errors.add(:url, "is not valid")
    end
  end
end
