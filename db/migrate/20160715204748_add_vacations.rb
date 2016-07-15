class AddVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.string :name
      t.references :user, index: true
      t.string :center_location
      t.string :ctr_loc_lat
      t.string :ctr_loc_lon

      t.timestamps null: false
    end
  end
end
