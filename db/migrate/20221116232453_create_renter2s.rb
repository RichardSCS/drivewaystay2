class CreateRenter2s < ActiveRecord::Migration[7.0]
  def change
    create_table :renter2s do |t|
      t.string :username
      t.string :password_digest
      t.string :name

      t.timestamps
    end
  end
end
