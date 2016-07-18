# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
user = User.new username: "ecarralt", password: "12345678", email: "ecarralt@gmail.com", first_name: "Enrique", last_name: "Carral", location: "Houston, TX", latitude:'29.760427' , longitude: "-95.369803"
user.save!
user2 = User.new username: "george", password: "12345678", email: "george@gmail.com", first_name: "George", last_name: "Clooney", location: "New York, NY", latitude:'40.712784' , longitude: "-74.005941"
user2.save!

Vacation.delete_all
vacation = Vacation.new name: "Irvine Vacation", user_id: user.id, center_location: "Irvine, CA", ctr_loc_lat: "33.683947", ctr_loc_lon: "-117.794694"
vacation.save!

Photo.delete_all
photo = Photo.new title: "newport beach!", location: "Newport Beach, CA", latitude: "33.618910", longitude: "-117.928947", vacation_id: vacation.id
File.open("#{Rails.root}/app/assets/images/newport2.jpg", "rb") do |file|
  photo.photofile = file
end
photo.save!
