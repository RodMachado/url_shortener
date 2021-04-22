class UrlHashGenerator

  def initialize(params)
    @url = params[:url]
  end

  def generate
    UrlCatalog.new(
      url_hash: SecureRandom.alphanumeric(6),
      url: url
    )
  end

  attr_reader :url

end