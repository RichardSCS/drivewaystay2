class CreateCar2s < ActiveRecord::Migration[7.0]
  def change
    create_table :car2s do |t|
      t.string :model
      t.string :plate
      t.references :renter2, null: false, foreign_key: true

      t.timestamps
    end
  end
end
