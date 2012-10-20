class AddHyperlinkToSpreeLocations < ActiveRecord::Migration
  def change
    add_column :spree_locations, :hyperlink, :string
  end
end
