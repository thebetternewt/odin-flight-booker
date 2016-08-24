class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    drop_table :bookings
    drop_table :passengers

    create_table :bookings do |t|
      t.references :flight, foreign_key: true

      t.timestamps
    end
  end
end
