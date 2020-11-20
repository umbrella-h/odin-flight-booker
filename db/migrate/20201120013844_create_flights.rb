class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :dep_airport, null: false, foreign_key: true
      t.references :arr_airport, null: false, foreign_key: true
      t.datetime :dep_time
      t.integer :duration

      t.timestamps
    end
  end
end
