class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :image_url
      t.references :album

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
