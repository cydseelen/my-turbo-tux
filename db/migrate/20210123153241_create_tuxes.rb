class CreateTuxes < ActiveRecord::Migration[6.0]
  def change
    create_table :tuxes do |t|
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
