# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create! username: "ecarralt", password: "12345678", email: "ecarralt@gmail.com", first_name: "Enrique", last_name: "Carral", location: "Houston, TX", latitude:'29.760427' , longitude: "-95.369803"


Vacation.delete_all
Vacation.create! name: "Irvine Vacation", user_id: 1, center_location: "Irvine, CA", ctr_loc_lat: "33.683947", ctr_loc_lon: "-117.794694"

Photo.delete_all
Photo.create!
