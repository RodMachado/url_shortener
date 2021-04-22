class CreateUrlCatalogs < ActiveRecord::Migration[6.1]
  def change
    create_table :url_catalogs do |t|
      t.string :url
      t.string :url_hash

      t.timestamps
    end
  end
end
