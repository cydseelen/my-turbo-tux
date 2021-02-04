class Tux < ApplicationRecord
  #has_one_attached :photo For later with Cloudinary
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :user
end
