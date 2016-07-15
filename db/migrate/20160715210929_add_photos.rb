class AddPhotos < ActiveRecord::Migration
  def change

    create_table :photos do |t|
      t.string :title
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :center_location
      t.string :photofile_id

      t.references :vacation, index: true

      t.timestamps null: false
    end
  end
end
