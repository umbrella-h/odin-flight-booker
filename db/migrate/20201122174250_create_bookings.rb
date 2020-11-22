class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :passenger, null: false, foreign_key: true
      t.integer :passenger_n
      t.integer :flight_id

      t.timestamps
    end
  end
end
