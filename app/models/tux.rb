class Tux < ApplicationRecord

  #has_one_attached :photo For later with Cloudinary
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  belongs_to :user

  
  
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_price,
    against: [ :name, :description, :price ],
    using: {
      tsearch: { prefix: true }
    }


end
