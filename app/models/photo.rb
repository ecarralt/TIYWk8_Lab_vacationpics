class Photo < ActiveRecord::Base

  validates :location, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  validates :photofile, presence: true
  attachment :photofile, extension: "jpg"

  validates :vacation_id, presence: true




  has_many :photos
  belongs_to :vacation


end
