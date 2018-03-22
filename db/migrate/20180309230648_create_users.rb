class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email, null: false
      t.string :phone_number
      t.string :password_digest
      t.integer :role, default: 0

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
