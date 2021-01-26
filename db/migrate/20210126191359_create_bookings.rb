class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date_rented
      t.date :date_returned
      t.references :user, null: false, foreign_key: true
      t.references :tux, null: false, foreign_key: true

      t.timestamps
    end
  end
end
