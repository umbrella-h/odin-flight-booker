class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :dep_airport_id
      t.integer :arr_airport_id
      t.datetime :dep_time
      t.integer :duration

      t.timestamps
    end
  end
end
