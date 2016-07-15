class User < ActiveRecord::Base

  validates :email, presence: true
  validates :username, presence: true

  has_secure_password

  has_many :vacations
  has_many :photos, through: :vacations


end
