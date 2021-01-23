class Booking < ApplicationRecord
  belongs_to :tux
  belongs_to :user

  validates :booking, presence: true
end
