class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.date :date
      t.date :expiration_date
      t.references :user, null: false, foreign_key: true
      t.references :airline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
