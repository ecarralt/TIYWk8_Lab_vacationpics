json.photos @photos do |photo|
  json.id photo.id
  json.title photo.title
  json.location photo.location
  json.latitude photo.latitude
  json.longitude photo.longitude
  json.center_location photo.center_location
  json.vacation_id photo.vacation_id
end
