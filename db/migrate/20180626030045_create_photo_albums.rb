class CreatePhotoAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_albums do |t|

      t.references :photo, foreign_key: true, null: false
      t.references :album, foreign_key: true, null: false

      t.timestamps
    end
  end
end
