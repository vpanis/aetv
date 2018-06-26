class CreateUserPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_photos do |t|

      t.references :user, foreign_key: true, null: false
      t.references :photo, foreign_key: true, null: false

      t.timestamps
    end
  end
end
