class AddFieldsToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :capacity, :integer
    add_column :flights, :avail, :integer
  end
end
