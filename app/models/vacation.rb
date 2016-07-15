class Vacation < ActiveRecord::Base

  validates :name, presence: true
  validates :center_location, presence: true
  validates :ctr_loc_lat, presence: true
  validates :ctr_loc_lon, presence: true
  validates :user_id, presence: true


  has_many :photos
  belongs_to :user


end
