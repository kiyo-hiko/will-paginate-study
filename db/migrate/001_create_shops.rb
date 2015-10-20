class CreateShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.string :zip_code
      t.string :address
      t.string :phone
      t.timestamps
    end
  end

  def self.down
    drop_table :shops
  end
end
