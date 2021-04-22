class UrlConvertersController < ApplicationController

  def show
    @url_hash = params['url_hash']

    begin
      @url_catalog = UrlCatalog.find_by!(url_hash: @url_hash)
    raise if @url_catalog.url == "#{root_url}#{@url_hash}"
      redirect_to @url_catalog.url
    rescue
      render :show
    end
  end
end