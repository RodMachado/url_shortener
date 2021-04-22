json.extract! url_catalog, :id, :url, :url_hash, :created_at, :updated_at
json.url url_catalog_url(url_catalog, format: :json)
