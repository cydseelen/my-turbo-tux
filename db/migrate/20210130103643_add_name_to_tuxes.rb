class AddNameToTuxes < ActiveRecord::Migration[6.0]
  def change
    add_column :tuxes, :name, :string
  end
end
