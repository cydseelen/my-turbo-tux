class Tux < ApplicationRecord

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_price,
    against: [ :name, :description, :price ],
    using: {
      tsearch: { prefix: true }
    }
end
