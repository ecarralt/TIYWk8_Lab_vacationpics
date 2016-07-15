class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :username, unique: true
      t.string :password_digest, null: false

      t.timestamps null: false
    end


  end
end
