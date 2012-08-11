class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string  "name"
      t.string  "address_1"
      t.string  "address_2"
      t.string  "city"
      t.string  "state"
      t.string  "postal_code"
      t.string  "country"
      t.string  "phone_number"
      t.float   "latitude"
      t.float   "longitude"
      t.boolean "gmaps"
      
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
