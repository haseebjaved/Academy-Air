class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :flight_id
      t.date :date
      t.integer :card

      t.timestamps
    end
  end
end
