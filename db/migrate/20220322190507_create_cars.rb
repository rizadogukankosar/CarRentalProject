class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.float :engineCapacity
      t.integer :horsePower
      t.integer :dailyPrice
      t.text :picture

      t.timestamps
    end
  end
end
