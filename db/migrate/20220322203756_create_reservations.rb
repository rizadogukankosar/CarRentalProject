class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :surname
      t.date :firstDay
      t.integer :countOfDay
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
