class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id, index: true
      t.integer :to_airport_id, index: true
      t.datetime :departs_at, index: true
      t.float :duration_in_hours

      t.timestamps
    end
    add_index :flights, [:from_airport_id, :to_airport_id]
  end
end
