class CreateOwner2s < ActiveRecord::Migration[7.0]
  def change
    create_table :owner2s do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :spots

      t.timestamps
    end
  end
end
